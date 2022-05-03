/*
 * @file knock_logic.c
 *
 * @date Apr 04, 2021
 * @author Andrey Gusakov
 */

#include "pch.h"
#include "knock_logic.h"
#include "os_access.h"

#include "hip9011.h"

int getCylinderKnockBank(uint8_t cylinderNumber) {
	// C/C++ can't index in to bit fields, we have to provide lookup ourselves
	switch (cylinderNumber) {
#if EFI_PROD_CODE
		case 0:
			return engineConfiguration->knockBankCyl1;
		case 1:
			return engineConfiguration->knockBankCyl2;
		case 2:
			return engineConfiguration->knockBankCyl3;
		case 3:
			return engineConfiguration->knockBankCyl4;
		case 4:
			return engineConfiguration->knockBankCyl5;
		case 5:
			return engineConfiguration->knockBankCyl6;
		case 6:
			return engineConfiguration->knockBankCyl7;
		case 7:
			return engineConfiguration->knockBankCyl8;
		case 8:
			return engineConfiguration->knockBankCyl9;
		case 9:
			return engineConfiguration->knockBankCyl10;
		case 10:
			return engineConfiguration->knockBankCyl11;
		case 11:
			return engineConfiguration->knockBankCyl12;
#endif
		default:
			return 0;
	}
}

bool KnockController::onKnockSenseCompleted(uint8_t cylinderNumber, float dbv, efitick_t lastKnockTime) {
	bool isKnock = dbv > m_knockThreshold;

#if EFI_TUNER_STUDIO
	// Pass through per-cylinder peak detector
	float cylPeak = peakDetectors[cylinderNumber].detect(dbv, lastKnockTime);
	engine->outputChannels.knock[cylinderNumber] = roundf(cylPeak);

	// Pass through all-cylinders peak detector
	engine->outputChannels.knockLevel = allCylinderPeakDetector.detect(dbv, lastKnockTime);

	// If this was a knock, count it!
	if (isKnock) {
		m_knockCount++;
	}
#endif // EFI_TUNER_STUDIO

	// TODO: retard timing, then put it back!
	if (isKnock) {
		auto baseTiming = engine->engineState.timingAdvance[cylinderNumber];

		// TODO: 20 configurable? Better explanation why 20?
		auto distToMinimum = baseTiming - (-20);

		// percent -> ratio = divide by 100
		auto retardFraction = engineConfiguration->knockRetardAggression * 0.01f;
		auto retardAmount = distToMinimum * retardFraction;

		{
			// Adjust knock retard under lock
			chibios_rt::CriticalSectionLocker csl;
			auto newRetard = m_knockRetard + retardAmount;
			m_knockRetard = clampF(0, newRetard, engineConfiguration->knockRetardMaximum);
		}
	}

	return isKnock;
}

float KnockController::getKnockRetard() const {
	return m_knockRetard;
}

uint32_t KnockController::getKnockCount() const {
	return m_knockCount;
}

void KnockController::onFastCallback() {
	m_knockThreshold = getKnockThreshold();

	constexpr auto callbackPeriodSeconds = FAST_CALLBACK_PERIOD_MS / 1000.0f;

	auto applyAmount = engineConfiguration->knockRetardReapplyRate * callbackPeriodSeconds;

	{
		// Adjust knock retard under lock
		chibios_rt::CriticalSectionLocker csl;

		float newRetard = m_knockRetard - applyAmount;

		// don't allow retard to go negative
		m_knockRetard = maxF(0, newRetard);
	}
}

float KnockController::getKnockThreshold() const {
	return interpolate2d(
		Sensor::getOrZero(SensorType::Rpm),
		engineConfiguration->knockNoiseRpmBins,
		engineConfiguration->knockBaseNoise
	);
}

// This callback is to be implemented by the knock sense driver
__attribute__((weak)) void onStartKnockSampling(uint8_t cylinderNumber, float samplingTimeSeconds, uint8_t channelIdx) {
	UNUSED(cylinderNumber);
	UNUSED(samplingTimeSeconds);
	UNUSED(channelIdx);
}

static uint8_t cylinderNumberCopy;

// Called when its time to start listening for knock
// Does some math, then hands off to the driver to start any sampling hardware
static void startKnockSampling(Engine* engine) {
	if (!engine->rpmCalculator.isRunning()) {
		return;
	}

	// Convert sampling angle to time
	float samplingSeconds = engine->rpmCalculator.oneDegreeUs * engineConfiguration->knockSamplingDuration / US_PER_SECOND_F;

	// Look up which channel this cylinder uses
	auto channel = getCylinderKnockBank(cylinderNumberCopy);

	// Call the driver to begin sampling
	onStartKnockSampling(cylinderNumberCopy, samplingSeconds, channel);
}

static scheduling_s startSampling;

void Engine::onSparkFireKnockSense(uint8_t cylinderNumber, efitick_t nowNt) {
	cylinderNumberCopy = cylinderNumber;

#if EFI_HIP_9011 || EFI_SOFTWARE_KNOCK
	scheduleByAngle(&startSampling, nowNt,
			/*angle*/engineConfiguration->knockDetectionWindowStart, { startKnockSampling, engine });
#else
	UNUSED(nowNt);
#endif

#if EFI_HIP_9011
	hip9011_onFireEvent(cylinderNumber, nowNt);
#endif
}

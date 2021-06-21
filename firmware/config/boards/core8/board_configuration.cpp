/**
 * @file boards/core8/board_configuration.cpp
 *
 * @brief Configuration defaults for the core8 board
 *
 * @author Ben Brazdziunas, (c) 2021
 */

#include "engine_configuration.h"
#include "engine_math.h"
#include "allsensors.h"
#include "fsio_impl.h"

EXTERN_ENGINE;

static const brain_pin_e injPins[] = {
	GPIOB_14,
	GPIOB_15,
	GPIOD_8,
	GPIOD_9,
	GPIOD_10,
	GPIOD_11,
	GPIOD_12,
	GPIOD_13,
	GPIO_UNASSIGNED,
	GPIO_UNASSIGNED,
	GPIO_UNASSIGNED,
	GPIO_UNASSIGNED
};

static const brain_pin_e ignPins[] = {
	GPIOE_7,
	GPIOE_8,
	GPIOE_9,
	GPIOE_10,
	GPIOE_11,
	GPIOE_12,
	GPIOE_13,
	GPIOE_14,
	GPIO_UNASSIGNED,
	GPIO_UNASSIGNED,
	GPIO_UNASSIGNED,
	GPIO_UNASSIGNED
};

static void setInjectorPins() {
	copyArray(engineConfiguration->injectionPins, injPins);
	engineConfiguration->injectionPinMode = OM_DEFAULT;
}

static void setIgnitionPins() {
	copyArray(engineConfiguration->ignitionPins, ignPins);
	engineConfiguration->ignitionPinMode = OM_DEFAULT;
}

void setSdCardConfigurationOverrides(void) {
}

static void setLedPins() {
	CONFIG(communicationLedPin) = GPIO_UNASSIGNED;
	CONFIG(runningLedPin) = GPIOA_15;
	CONFIG(warningLedPin) = GPIO_UNASSIGNED;
}

static void setupVbatt() {
	// 5.6k high side/10k low side = 1.56 ratio divider
	engineConfiguration->analogInputDividerCoefficient = 1.56f;

	// 6.34k high side/1k low side = 9.2
	engineConfiguration->vbattDividerCoeff = (6.34f / 1.0f);

	// Battery sense on PA7
	engineConfiguration->vbattAdcChannel = EFI_ADC_0;

	engineConfiguration->adcVcc = 3.3f;
}

static void setupEtb() {
	// TLE9201 driver
	// This chip has three control pins:
	// DIR - sets direction of the motor
	// PWM - pwm control (enable high, coast low)
	// DIS - disables motor (enable low)

	// Throttle #1
	// PWM pin
	engineConfiguration->etbIo[0].controlPin1 = GPIO_UNASSIGNED;
	// DIR pin
	engineConfiguration->etbIo[0].directionPin1 = GPIO_UNASSIGNED;
	// Disable pin
	engineConfiguration->etbIo[0].disablePin = GPIO_UNASSIGNED;
	// Unused
	engineConfiguration->etbIo[0].directionPin2 = GPIO_UNASSIGNED;

	// Throttle #2
	// PWM pin
	engineConfiguration->etbIo[1].controlPin1 = GPIO_UNASSIGNED;
	// DIR pin
	engineConfiguration->etbIo[1].directionPin1 = GPIO_UNASSIGNED;
	// Disable pin
	engineConfiguration->etbIo[1].disablePin = GPIO_UNASSIGNED;
	// Unused
	engineConfiguration->etbIo[1].directionPin2 = GPIO_UNASSIGNED;

	// we only have pwm/dir, no dira/dirb
	engineConfiguration->etb_use_two_wires = false;
}

static void setupDefaultSensorInputs() {

	engineConfiguration->triggerInputPins[0] = GPIOB_8;
	engineConfiguration->camInputs[0] = GPIOB_9;

	engineConfiguration->triggerInputPins[1] = GPIO_UNASSIGNED;
	engineConfiguration->triggerInputPins[2] = GPIO_UNASSIGNED;

	// CLT = Analog Temp 3 = PB0
	engineConfiguration->clt.adcChannel = EFI_ADC_8;

	// IAT = Analog Temp 2 = PC5
	engineConfiguration->iat.adcChannel = EFI_ADC_15;

	// TPS = Analog volt 2 = PC1
	engineConfiguration->tps1_1AdcChannel = EFI_ADC_11;

	// MAP = Analog volt 1 = PC0
	engineConfiguration->map.sensor.hwChannel = EFI_ADC_10;

	// pin #28 WBO AFR "Analog Volt 10"
	engineConfiguration->afr.hwChannel = EFI_ADC_5;
}

static void setupSdCard() {

	engineConfiguration->is_enabled_spi_3 = false;
	engineConfiguration->spi3sckPin = GPIO_UNASSIGNED;
	engineConfiguration->spi3misoPin = GPIO_UNASSIGNED;
	engineConfiguration->spi3mosiPin = GPIO_UNASSIGNED;
}

void setBoardConfigOverrides(void) {
	setupSdCard();
	setupEtb();
	setLedPins();
	setupVbatt();

	engineConfiguration->clt.config.bias_resistor = 2490;
	engineConfiguration->iat.config.bias_resistor = 2490;

	engineConfiguration->canTxPin = GPIOB_13;
	engineConfiguration->canRxPin = GPIOB_12;
}

void setPinConfigurationOverrides(void) {
}

void setSerialConfigurationOverrides(void) {
	engineConfiguration->useSerialPort = false;
	engineConfiguration->binarySerialTxPin = GPIO_UNASSIGNED;
	engineConfiguration->binarySerialRxPin = GPIO_UNASSIGNED;
//	engineConfiguration->consoleSerialTxPin = GPIO_UNASSIGNED;
//	engineConfiguration->consoleSerialRxPin = GPIO_UNASSIGNED;
}


/**
 * @brief   Board-specific configuration defaults.
 *
 * See also setDefaultEngineConfiguration
 *
 * @todo    Add your board-specific code, if any.
 */
void setBoardDefaultConfiguration(void) {
	setInjectorPins();
	setIgnitionPins();

	engineConfiguration->isSdCardEnabled = false;

	// "required" hardware is done - set some reasonable defaults
	setupDefaultSensorInputs();

	// Some sensible defaults for other options
	setOperationMode(engineConfiguration, FOUR_STROKE_CRANK_SENSOR);
	engineConfiguration->trigger.type = TT_TOOTHED_WHEEL_60_2;
	engineConfiguration->useOnlyRisingEdgeForTrigger = true;
	setAlgorithm(LM_SPEED_DENSITY PASS_CONFIG_PARAMETER_SUFFIX);

	engineConfiguration->specs.cylindersCount = 4;
	engineConfiguration->specs.firingOrder = FO_1_4_3_2;

	//CONFIG(enableSoftwareKnock) = false;

	engineConfiguration->ignitionMode = IM_INDIVIDUAL_COILS;
	engineConfiguration->crankingInjectionMode = IM_SEQUENTIAL;
	engineConfiguration->injectionMode = IM_SEQUENTIAL;

	// CONFIG(mainRelayPin) = GPIO_UNASSIGNED;//  "Lowside 13"    # pin 10/black35
	// CONFIG(fanPin) = GPIO_UNASSIGNED;//  "Lowside 15"    # pin 12/black35
	// CONFIG(fuelPumpPin) = GPIO_UNASSIGNED;//  "Lowside 16"    # pin 23/black35
}

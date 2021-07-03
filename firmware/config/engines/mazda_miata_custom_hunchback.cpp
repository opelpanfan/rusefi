/*
 * @file mazda_miata_custom_hunchback.cpp
 *
 * rusEfi Green Race car - based on NA6 body with VVT swap
 *
 * Hunchback - VVT engine with NA fuel rail
 * set engine_type 54
 *
 * It's using ZM-DE 2000 protege 36/1 trigger wheel ZM 01-11-408 and there are some minor issues :(
 *
 * MAZDA_MIATA_2003_NA_RAIL
 *
 * @date Sep 20, 2019
 * @author Andrey Belomutskiy, (c) 2012-2020
 */

#include "mazda_miata_vvt.h"
#include "custom_engine.h"
#include "fsio_impl.h"
#include "ego.h"
#include "thermistors.h"

EXTERN_CONFIG;

// todo: why would this not work?
//extern const float mazda_miata_nb2_RpmBins[FUEL_RPM_COUNT];
//extern const float mazda_miata_nb2_LoadBins[FUEL_LOAD_COUNT];

const float mazda_miata_nb2_RpmBins[FUEL_RPM_COUNT] = {700.0, 820.0, 950.0, 1100.0,
		1300.0, 1550.0, 1800.0, 2150.0,
		2500.0, 3000.0, 3500.0, 4150.0,
		4900.0, 5800.0, 6800.0, 8000.0}
;

const float mazda_miata_nb2_LoadBins[FUEL_LOAD_COUNT] = {20.0, 25.0, 30.0, 35.0,
		40.0, 46.0, 54.0, 63.0,
		73.0, 85.0, 99.0, 116.0,
		135.0, 158.0, 185.0, 220.0}
;

static uint8_t const fsio_table_dyno[FSIO_TABLE_8][FSIO_TABLE_8] = {
		/* Generated by TS2C on Sun May 07 09:35:13 EDT 2017*/
		{/* 0 30.000	*//* 0 700.0*/1,	/* 1 1000.0*/3,	/* 2 2000.0*/10,	/* 3 3000.0*/20,	/* 4 3500.0*/20,	/* 5 4500.0*/16,	/* 6 5500.0*/11,	/* 7 6500.0*/10,	},
		{/* 1 40.000	*//* 0 700.0*/3,	/* 1 1000.0*/10,	/* 2 2000.0*/19,	/* 3 3000.0*/26,	/* 4 3500.0*/20,	/* 5 4500.0*/16,	/* 6 5500.0*/11,	/* 7 6500.0*/10,	},
		{/* 2 50.000	*//* 0 700.0*/7,	/* 1 1000.0*/16,	/* 2 2000.0*/24,	/* 3 3000.0*/28,	/* 4 3500.0*/20,	/* 5 4500.0*/16,	/* 6 5500.0*/11,	/* 7 6500.0*/10,	},
		{/* 3 60.000	*//* 0 700.0*/11,	/* 1 1000.0*/20,	/* 2 2000.0*/27,	/* 3 3000.0*/28,	/* 4 3500.0*/20,	/* 5 4500.0*/16,	/* 6 5500.0*/11,	/* 7 6500.0*/10,	},
		{/* 4 70.000	*//* 0 700.0*/13,	/* 1 1000.0*/24,	/* 2 2000.0*/31,	/* 3 3000.0*/28,	/* 4 3500.0*/20,	/* 5 4500.0*/16,	/* 6 5500.0*/11,	/* 7 6500.0*/10,	},
		{/* 5 75.000	*//* 0 700.0*/15,	/* 1 1000.0*/27,	/* 2 2000.0*/33,	/* 3 3000.0*/28,	/* 4 3500.0*/20,	/* 5 4500.0*/16,	/* 6 5500.0*/11,	/* 7 6500.0*/10,	},
		{/* 6 82.000	*//* 0 700.0*/17,	/* 1 1000.0*/28,	/* 2 2000.0*/33,	/* 3 3000.0*/28,	/* 4 3500.0*/20,	/* 5 4500.0*/16,	/* 6 5500.0*/11,	/* 7 6500.0*/10,	},
		{/* 7 85.000	*//* 0 700.0*/17,	/* 1 1000.0*/28,	/* 2 2000.0*/33,	/* 3 3000.0*/28,	/* 4 3500.0*/20,	/* 5 4500.0*/16,	/* 6 5500.0*/11,	/* 7 6500.0*/10,	},
};

#if DEFAULT_FUEL_LOAD_COUNT == FUEL_LOAD_COUNT
static const uint8_t mapBased18vvtVeTable_NA_fuel_rail[16][16] = {
		/* Generated by TS2C on Sun May 07 09:37:15 EDT 2017*/
		{/* 0 20.000	*//* 0 700.0*/35,	/* 1 820.0*/36,	/* 2 950.0*/37,	/* 3 1100.0*/35,	/* 4 1300.0*/36,	/* 5 1550.0*/42,	/* 6 1800.0*/45,	/* 7 2150.0*/34,	/* 8 2500.0*/26,	/* 9 3000.0*/27,	/* 10 3500.0*/29,	/* 11 4150.0*/32,	/* 12 4900.0*/36,	/* 13 5800.0*/32,	/* 14 6800.0*/34,	/* 15 8000.0*/36,	},
		{/* 1 25.000	*//* 0 700.0*/35,	/* 1 820.0*/38,	/* 2 950.0*/38,	/* 3 1100.0*/44,	/* 4 1300.0*/42,	/* 5 1550.0*/51,	/* 6 1800.0*/50,	/* 7 2150.0*/45,	/* 8 2500.0*/42,	/* 9 3000.0*/41,	/* 10 3500.0*/39,	/* 11 4150.0*/43,	/* 12 4900.0*/38,	/* 13 5800.0*/36,	/* 14 6800.0*/38,	/* 15 8000.0*/40,	},
		{/* 2 30.000	*//* 0 700.0*/37,	/* 1 820.0*/41,	/* 2 950.0*/51,	/* 3 1100.0*/48,	/* 4 1300.0*/47,	/* 5 1550.0*/51,	/* 6 1800.0*/49,	/* 7 2150.0*/47,	/* 8 2500.0*/56,	/* 9 3000.0*/51,	/* 10 3500.0*/52,	/* 11 4150.0*/60,	/* 12 4900.0*/59,	/* 13 5800.0*/80,	/* 14 6800.0*/80,	/* 15 8000.0*/80,	},
		{/* 3 35.000	*//* 0 700.0*/39,	/* 1 820.0*/44,	/* 2 950.0*/53,	/* 3 1100.0*/50,	/* 4 1300.0*/52,	/* 5 1550.0*/55,	/* 6 1800.0*/55,	/* 7 2150.0*/64,	/* 8 2500.0*/68,	/* 9 3000.0*/57,	/* 10 3500.0*/59,	/* 11 4150.0*/68,	/* 12 4900.0*/66,	/* 13 5800.0*/80,	/* 14 6800.0*/80,	/* 15 8000.0*/80,	},
		{/* 4 40.000	*//* 0 700.0*/45,	/* 1 820.0*/57,	/* 2 950.0*/53,	/* 3 1100.0*/47,	/* 4 1300.0*/62,	/* 5 1550.0*/62,	/* 6 1800.0*/63,	/* 7 2150.0*/68,	/* 8 2500.0*/72,	/* 9 3000.0*/63,	/* 10 3500.0*/74,	/* 11 4150.0*/84,	/* 12 4900.0*/75,	/* 13 5800.0*/80,	/* 14 6800.0*/80,	/* 15 8000.0*/80,	},
		{/* 5 46.000	*//* 0 700.0*/55,	/* 1 820.0*/63,	/* 2 950.0*/58,	/* 3 1100.0*/53,	/* 4 1300.0*/59,	/* 5 1550.0*/64,	/* 6 1800.0*/67,	/* 7 2150.0*/73,	/* 8 2500.0*/75,	/* 9 3000.0*/82,	/* 10 3500.0*/80,	/* 11 4150.0*/86,	/* 12 4900.0*/91,	/* 13 5800.0*/80,	/* 14 6800.0*/80,	/* 15 8000.0*/80,	},
		{/* 6 54.000	*//* 0 700.0*/62,	/* 1 820.0*/69,	/* 2 950.0*/67,	/* 3 1100.0*/63,	/* 4 1300.0*/67,	/* 5 1550.0*/68,	/* 6 1800.0*/77,	/* 7 2150.0*/82,	/* 8 2500.0*/90,	/* 9 3000.0*/96,	/* 10 3500.0*/94,	/* 11 4150.0*/96,	/* 12 4900.0*/92,	/* 13 5800.0*/80,	/* 14 6800.0*/80,	/* 15 8000.0*/80,	},
		{/* 7 63.000	*//* 0 700.0*/67,	/* 1 820.0*/73,	/* 2 950.0*/72,	/* 3 1100.0*/73,	/* 4 1300.0*/78,	/* 5 1550.0*/73,	/* 6 1800.0*/79,	/* 7 2150.0*/92,	/* 8 2500.0*/105,	/* 9 3000.0*/105,	/* 10 3500.0*/100,	/* 11 4150.0*/106,	/* 12 4900.0*/103,	/* 13 5800.0*/103,	/* 14 6800.0*/108,	/* 15 8000.0*/108,	},
		{/* 8 73.000	*//* 0 700.0*/70,	/* 1 820.0*/74,	/* 2 950.0*/75,	/* 3 1100.0*/79,	/* 4 1300.0*/89,	/* 5 1550.0*/90,	/* 6 1800.0*/95,	/* 7 2150.0*/98,	/* 8 2500.0*/96,	/* 9 3000.0*/100,	/* 10 3500.0*/92,	/* 11 4150.0*/101,	/* 12 4900.0*/103,	/* 13 5800.0*/103,	/* 14 6800.0*/108,	/* 15 8000.0*/108,	},
		{/* 9 85.000	*//* 0 700.0*/72,	/* 1 820.0*/76,	/* 2 950.0*/79,	/* 3 1100.0*/80,	/* 4 1300.0*/83,	/* 5 1550.0*/82,	/* 6 1800.0*/85,	/* 7 2150.0*/97,	/* 8 2500.0*/98,	/* 9 3000.0*/104,	/* 10 3500.0*/102,	/* 11 4150.0*/115,	/* 12 4900.0*/103,	/* 13 5800.0*/103,	/* 14 6800.0*/108,	/* 15 8000.0*/108,	},
		{/* 10 99.000	*//* 0 700.0*/78,	/* 1 820.0*/77,	/* 2 950.0*/79,	/* 3 1100.0*/76,	/* 4 1300.0*/78,	/* 5 1550.0*/78,	/* 6 1800.0*/83,	/* 7 2150.0*/91,	/* 8 2500.0*/101,	/* 9 3000.0*/108,	/* 10 3500.0*/103,	/* 11 4150.0*/116,	/* 12 4900.0*/108,	/* 13 5800.0*/103,	/* 14 6800.0*/108,	/* 15 8000.0*/108,	},
		{/* 11 116.000	*//* 0 700.0*/80,	/* 1 820.0*/80,	/* 2 950.0*/80,	/* 3 1100.0*/80,	/* 4 1300.0*/80,	/* 5 1550.0*/80,	/* 6 1800.0*/80,	/* 7 2150.0*/100,	/* 8 2500.0*/100,	/* 9 3000.0*/100,	/* 10 3500.0*/106,	/* 11 4150.0*/116,	/* 12 4900.0*/108,	/* 13 5800.0*/108,	/* 14 6800.0*/108,	/* 15 8000.0*/108,	},
		{/* 12 135.000	*//* 0 700.0*/80,	/* 1 820.0*/80,	/* 2 950.0*/80,	/* 3 1100.0*/80,	/* 4 1300.0*/80,	/* 5 1550.0*/80,	/* 6 1800.0*/80,	/* 7 2150.0*/100,	/* 8 2500.0*/100,	/* 9 3000.0*/100,	/* 10 3500.0*/106,	/* 11 4150.0*/116,	/* 12 4900.0*/108,	/* 13 5800.0*/108,	/* 14 6800.0*/108,	/* 15 8000.0*/108,	},
		{/* 13 158.000	*//* 0 700.0*/80,	/* 1 820.0*/80,	/* 2 950.0*/80,	/* 3 1100.0*/80,	/* 4 1300.0*/80,	/* 5 1550.0*/80,	/* 6 1800.0*/80,	/* 7 2150.0*/80,	/* 8 2500.0*/80,	/* 9 3000.0*/80,	/* 10 3500.0*/80,	/* 11 4150.0*/80,	/* 12 4900.0*/80,	/* 13 5800.0*/80,	/* 14 6800.0*/80,	/* 15 8000.0*/80,	},
		{/* 14 185.000	*//* 0 700.0*/80,	/* 1 820.0*/80,	/* 2 950.0*/80,	/* 3 1100.0*/80,	/* 4 1300.0*/80,	/* 5 1550.0*/80,	/* 6 1800.0*/80,	/* 7 2150.0*/80,	/* 8 2500.0*/80,	/* 9 3000.0*/80,	/* 10 3500.0*/80,	/* 11 4150.0*/80,	/* 12 4900.0*/80,	/* 13 5800.0*/80,	/* 14 6800.0*/80,	/* 15 8000.0*/80,	},
		{/* 15 220.000	*//* 0 700.0*/80,	/* 1 820.0*/80,	/* 2 950.0*/80,	/* 3 1100.0*/80,	/* 4 1300.0*/80,	/* 5 1550.0*/80,	/* 6 1800.0*/80,	/* 7 2150.0*/80,	/* 8 2500.0*/80,	/* 9 3000.0*/80,	/* 10 3500.0*/80,	/* 11 4150.0*/80,	/* 12 4900.0*/80,	/* 13 5800.0*/80,	/* 14 6800.0*/80,	/* 15 8000.0*/80,	},
};
#endif

static const  float mazda_miata_nb2_targetLambdaRpmBins[FUEL_RPM_COUNT] = {650.0, 800.0, 1050.0, 1300.0,
		1550.0, 1800.0, 2050.0, 2300.0,
		2550.0, 2800.0, 3050.0, 3300.0,
		3550.0, 3800.0, 4050.0, 6400.0}
;

static const float mazda_miata_nb2_targetLambdaLoadBins[FUEL_LOAD_COUNT] = {10.0, 20.0, 30.0, 40.0,
		50.0, 60.0, 70.0, 80.0,
		90.0, 100.0, 110.0, 120.0,
		130.0, 140.0, 150.0, 160.0};

void setMazdaMiata2003EngineConfigurationNaFuelRail(DECLARE_CONFIG_PARAMETER_SIGNATURE) {
	setMazdaMiata2003EngineConfiguration(PASS_CONFIG_PARAMETER_SIGNATURE);

	copyTable(config->fsioTable1, fsio_table_dyno);

	copyArray(config->veRpmBins, mazda_miata_nb2_RpmBins);
	copyArray(config->veLoadBins, mazda_miata_nb2_LoadBins);
	copyTable(config->veTable, mapBased18vvtVeTable_NA_fuel_rail);

	engineConfiguration->vvtOffsets[0] = 83; // 2002 green car value

	copyArray(config->lambdaRpmBins, mazda_miata_nb2_targetLambdaRpmBins);
	copyArray(config->lambdaLoadBins, mazda_miata_nb2_targetLambdaLoadBins);

	engineConfiguration->ignitionPins[2] = GPIOC_7;

	// Frankenso analog #7 pin 3J, W48 top <>W48 bottom jumper, not OEM
	engineConfiguration->afr.hwChannel = EFI_ADC_3; // PA3

	engineConfiguration->mafAdcChannel = EFI_ADC_4; // PA4

	setEgoSensor(ES_14Point7_Free PASS_CONFIG_PARAMETER_SUFFIX);

	engineConfiguration->cranking.baseFuel = 27; // higher value for return system NA conversion since lower fuel pressure
	engineConfiguration->vbattDividerCoeff = 9.30; // actual value on my new board

	engineConfiguration->ignitionDwellForCrankingMs = 8;

	engineConfiguration->vvtOffsets[0] = 97;


	engineConfiguration->rpmHardLimit = 7200; // we want to survive the race, but we also want some fun!

	// set idle_position 30
	engineConfiguration->manIdlePosition = 30;
	engineConfiguration->crankingIACposition = 65;
}



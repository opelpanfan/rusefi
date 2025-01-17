/**
 * @file fsio_impl.h
 * @brief FSIO as it's used for GPIO
 *
 * @date Oct 5, 2014
 * @author Andrey Belomutskiy, (c) 2012-2020
 */

#pragma once

#include "expected.h"

typedef Map3D<SCRIPT_TABLE_8, SCRIPT_TABLE_8, float, uint16_t, uint16_t> fsio8_Map3D_f32t;
typedef Map3D<SCRIPT_TABLE_8, SCRIPT_TABLE_8, uint8_t, uint16_t, uint16_t> fsio8_Map3D_u8t;

void initFsioImpl();

float getCurveValue(int index, float key);
int getCurveIndexByName(const char *name);
int getTableIndexByName(const char *name);
int getSettingIndexByName(const char *name);
ValueProvider3D *getscriptTable(int index);

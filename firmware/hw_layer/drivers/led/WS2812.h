/**
 * @file ws2812.h
 *
 * @date 25.03.2025
 * @author Benas Brazdziunas
 */

#pragma once

typedef struct {
  uint8_t red;    
  uint8_t green;
  uint8_t blue;
} WS2812_RGB_t;

void initWS2812();

void clearWS2812One(uint32_t num, bool refresh);
void clearWS2812All(bool refresh);
void setWS2812One(uint32_t num, WS2812_RGB_t rgb_col, bool refresh);
void setWS2812All(WS2812_RGB_t rgb_col, bool refresh);
void setWS2812Brightness(uint8_t num, bool refresh);

void calcBuf();
uint32_t mapInt(uint32_t x, uint32_t in_min, uint32_t in_max, uint32_t out_min, uint32_t out_max);
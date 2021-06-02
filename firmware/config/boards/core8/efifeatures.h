/**
 * @file boards/subaru_eg33/efifeatures.h
 *
 * @brief In this header we can override efifeatures.h.
 *
 * @date Feb 06, 2021
 * @author Andrey Gusakov, 2021
 */

#include "../../stm32f4ems/efifeatures.h"

#ifndef EFIFEATURES_CORE8_H_
#define EFIFEATURES_CORE8_H_

// #undef LED_ERROR_BRAIN_PIN_MODE
// #define LED_ERROR_BRAIN_PIN_MODE 		INVERTED_OUTPUT
// #undef LED_WARNING_BRAIN_PIN_MODE
// #define LED_WARNING_BRAIN_PIN_MODE		INVERTED_OUTPUT
// #undef LED_RUNING_BRAIN_PIN_MODE
// #define LED_RUNING_BRAIN_PIN_MODE		INVERTED_OUTPUT

#undef EFI_RTC
#define EFI_RTC						FALSE

#undef EFI_SDC_DEVICE
#define EFI_SDC_DEVICE				SDCD1

#undef EFI_MAX_31855
#define EFI_MAX_31855				FALSE

#undef EFI_I2C_SCL_BRAIN_PIN
#undef EFI_I2C_SDA_BRAIN_PIN
#undef EFI_I2C_AF
#define EFI_I2C_SCL_BRAIN_PIN GPIOB_10
#define EFI_I2C_SDA_BRAIN_PIN GPIOB_11
#define EFI_I2C_AF 4

#endif /* EFIFEATURES_CORE8_H_ */

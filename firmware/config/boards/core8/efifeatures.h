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

#undef EFI_RTC
#define EFI_RTC						FALSE

#undef EFI_SDC_DEVICE
#define EFI_SDC_DEVICE				SDCD2

#undef EFI_MAX_31855
#define EFI_MAX_31855				FALSE

#undef EFI_I2C_SCL_BRAIN_PIN
#undef EFI_I2C_SDA_BRAIN_PIN
#undef EFI_I2C_AF
#define EFI_I2C_SCL_BRAIN_PIN GPIOB_10
#define EFI_I2C_SDA_BRAIN_PIN GPIOB_11
#define EFI_I2C_AF 4

#define RPM_LOW_THRESHOLD 			8	// RPM=8 is an empirical lower sensitivity threshold of MAX9926 for 60-2
#define NO_RPM_EVENTS_TIMEOUT_SECS	5	// (RPM < 12)


#endif /* EFIFEATURES_CORE8_H_ */

/**
 * \file
 * \brief Definitions of low-level SPI master drivers for SPIv1 in ST,NUCLEO-F103RB (ST,STM32F103RB chip)
 *
 * \author Copyright (C) 2016-2018 Kamil Szczygiel http://www.distortec.com http://www.freddiechopin.info
 *
 * \par License
 * This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0. If a copy of the MPL was not
 * distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
 *
 * \warning
 * Automatically generated file - do not edit!
 */

#include "distortos/chip/spis.hpp"

#include "distortos/chip/ChipSpiMasterLowLevel.hpp"
#include "distortos/chip/STM32-SPIv1-SpiPeripheral.hpp"

#include "distortos/BIND_LOW_LEVEL_INITIALIZER.h"

namespace distortos
{

namespace chip
{

#ifdef CONFIG_CHIP_STM32_SPIV1_SPI1_ENABLE

/*---------------------------------------------------------------------------------------------------------------------+
| SPI1
+---------------------------------------------------------------------------------------------------------------------*/

namespace
{

/**
 * \brief Low-level chip initializer for SPI1
 *
 * This function is called before constructors for global and static objects via BIND_LOW_LEVEL_INITIALIZER().
 */

void spi1LowLevelInitializer()
{
#if defined(RCC_APB1ENR_SPI1EN)
	RCC->APB1ENR |= RCC_APB1ENR_SPI1EN;
#elif defined(RCC_APB2ENR_SPI1EN)
	RCC->APB2ENR |= RCC_APB2ENR_SPI1EN;
#else
	#error "Unsupported bus for SPI1!"
#endif
}

BIND_LOW_LEVEL_INITIALIZER(50, spi1LowLevelInitializer);

/// raw SPI1 peripheral
const SpiPeripheral spi1Peripheral {SPI1_BASE};

}	// namespace

ChipSpiMasterLowLevel spi1 {spi1Peripheral};

/**
 * \brief SPI1 interrupt handler
 */

extern "C" void SPI1_IRQHandler()
{
	spi1.interruptHandler();
}

#endif	// def CONFIG_CHIP_STM32_SPIV1_SPI1_ENABLE

#ifdef CONFIG_CHIP_STM32_SPIV1_SPI2_ENABLE

/*---------------------------------------------------------------------------------------------------------------------+
| SPI2
+---------------------------------------------------------------------------------------------------------------------*/

namespace
{

/**
 * \brief Low-level chip initializer for SPI2
 *
 * This function is called before constructors for global and static objects via BIND_LOW_LEVEL_INITIALIZER().
 */

void spi2LowLevelInitializer()
{
#if defined(RCC_APB1ENR_SPI2EN)
	RCC->APB1ENR |= RCC_APB1ENR_SPI2EN;
#elif defined(RCC_APB2ENR_SPI2EN)
	RCC->APB2ENR |= RCC_APB2ENR_SPI2EN;
#else
	#error "Unsupported bus for SPI2!"
#endif
}

BIND_LOW_LEVEL_INITIALIZER(50, spi2LowLevelInitializer);

/// raw SPI2 peripheral
const SpiPeripheral spi2Peripheral {SPI2_BASE};

}	// namespace

ChipSpiMasterLowLevel spi2 {spi2Peripheral};

/**
 * \brief SPI2 interrupt handler
 */

extern "C" void SPI2_IRQHandler()
{
	spi2.interruptHandler();
}

#endif	// def CONFIG_CHIP_STM32_SPIV1_SPI2_ENABLE

}	// namespace chip

}	// namespace distortos
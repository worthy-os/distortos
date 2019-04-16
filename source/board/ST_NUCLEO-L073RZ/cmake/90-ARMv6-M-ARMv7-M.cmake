#
# file: cmake/90-ARMv6-M-ARMv7-M.cmake
#
# author: Copyright (C) 2018-2019 Kamil Szczygiel http://www.distortec.com http://www.freddiechopin.info
#
# This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0. If a copy of the MPL was not
# distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
#
# Automatically generated file - do not edit!
#

set(DISTORTOS_RAW_LINKER_SCRIPT "source/board/ST_NUCLEO-L073RZ/ST_NUCLEO-L073RZ.ld")

distortosSetFixedConfiguration(BOOLEAN
		DISTORTOS_ARCHITECTURE_ASCENDING_STACK
		OFF)

distortosSetFixedConfiguration(BOOLEAN
		DISTORTOS_ARCHITECTURE_EMPTY_STACK
		OFF)

distortosSetFixedConfiguration(INTEGER
		DISTORTOS_ARCHITECTURE_STACK_ALIGNMENT
		8)

distortosSetFixedConfiguration(BOOLEAN
		DISTORTOS_ARCHITECTURE_ARM
		ON)

distortosSetFixedConfiguration(BOOLEAN
		DISTORTOS_ARCHITECTURE_ARMV6_M
		ON)

distortosSetFixedConfiguration(BOOLEAN
		DISTORTOS_ARCHITECTURE_ARM_CORTEX_M0PLUS
		ON)

distortosSetFixedConfiguration(BOOLEAN
		DISTORTOS_ARCHITECTURE_ARM_CORTEX_M0PLUS_R0P1
		ON)

distortosSetConfiguration(INTEGER
		distortos_Architecture_00_Interrupt_stack_size
		1024
		MIN 8
		HELP "Size (in bytes) of \"main\" stack used by core exceptions and interrupts in Handler mode."
		OUTPUT_NAME DISTORTOS_ARCHITECTURE_MAIN_STACK_SIZE)

distortosSetConfiguration(STRING
		distortos_Memory_regions_00_text_vectorTable
		"flash"
		HELP "Memory region for .text.vectorTable section in linker script"
		OUTPUT_NAME DISTORTOS_LD_TEXT_VECTOR_TABLE_REGION
		OUTPUT_TYPES BOOLEAN)

distortosSetConfiguration(STRING
		distortos_Memory_regions_01_text
		"flash"
		HELP "Memory region for .text section in linker script"
		OUTPUT_NAME DISTORTOS_LD_TEXT_REGION
		OUTPUT_TYPES BOOLEAN)

distortosSetConfiguration(STRING
		distortos_Memory_regions_02_ARM_exidx
		"flash"
		HELP "Memory region for .ARM.exidx section in linker script"
		OUTPUT_NAME DISTORTOS_LD_ARM_EXIDX_REGION
		OUTPUT_TYPES BOOLEAN)

distortosSetConfiguration(STRING
		distortos_Memory_regions_03_Main_stack
		"SRAM"
		HELP "Memory region for main stack in linker script"
		OUTPUT_NAME DISTORTOS_LD_MAIN_STACK_REGION
		OUTPUT_TYPES BOOLEAN)

distortosSetConfiguration(STRING
		distortos_Memory_regions_04_bss
		"SRAM"
		HELP "Memory region for .bss section in linker script"
		OUTPUT_NAME DISTORTOS_LD_BSS_REGION
		OUTPUT_TYPES BOOLEAN)

distortosSetConfiguration(STRING
		distortos_Memory_regions_05_data_VMA
		"SRAM"
		HELP "VMA memory region for .data section in linker script"
		OUTPUT_NAME DISTORTOS_LD_DATA_VMA_REGION
		OUTPUT_TYPES BOOLEAN)

distortosSetConfiguration(STRING
		distortos_Memory_regions_06_data_LMA
		"flash"
		HELP "LMA memory region for .data section in linker script"
		OUTPUT_NAME DISTORTOS_LD_DATA_LMA_REGION
		OUTPUT_TYPES BOOLEAN)

distortosSetConfiguration(STRING
		distortos_Memory_regions_07_noinit
		"SRAM"
		HELP "Memory region for .noinit section in linker script"
		OUTPUT_NAME DISTORTOS_LD_NOINIT_REGION
		OUTPUT_TYPES BOOLEAN)

distortosSetConfiguration(STRING
		distortos_Memory_regions_08_SRAM_data_LMA
		"flash"
		HELP "LMA memory region for .SRAM.data section in linker script"
		OUTPUT_NAME DISTORTOS_LD_SRAM_DATA_LMA_REGION
		OUTPUT_TYPES BOOLEAN)

distortosSetConfiguration(STRING
		distortos_Memory_regions_09_Process_stack
		"SRAM"
		HELP "Memory region for process stack in linker script"
		OUTPUT_NAME DISTORTOS_LD_PROCESS_STACK_REGION
		OUTPUT_TYPES BOOLEAN)

distortosSetConfiguration(STRING
		distortos_Memory_regions_10_Heap
		"SRAM"
		HELP "Memory region for heap in linker script"
		OUTPUT_NAME DISTORTOS_LD_HEAP_REGION
		OUTPUT_TYPES BOOLEAN)

if(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_WWDG_ENABLE)
	distortosSetFixedConfiguration(BOOLEAN
			DISTORTOS_ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_WWDG_ENABLE
			ON)
endif(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_WWDG_ENABLE)

if(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_PVD_ENABLE)
	distortosSetFixedConfiguration(BOOLEAN
			DISTORTOS_ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_PVD_ENABLE
			ON)
endif(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_PVD_ENABLE)

if(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_RTC_ENABLE)
	distortosSetFixedConfiguration(BOOLEAN
			DISTORTOS_ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_RTC_ENABLE
			ON)
endif(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_RTC_ENABLE)

if(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_FLASH_ENABLE)
	distortosSetFixedConfiguration(BOOLEAN
			DISTORTOS_ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_FLASH_ENABLE
			ON)
endif(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_FLASH_ENABLE)

if(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_RCC_CRS_ENABLE)
	distortosSetFixedConfiguration(BOOLEAN
			DISTORTOS_ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_RCC_CRS_ENABLE
			ON)
endif(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_RCC_CRS_ENABLE)

if(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_EXTI0_1_ENABLE)
	distortosSetFixedConfiguration(BOOLEAN
			DISTORTOS_ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_EXTI0_1_ENABLE
			ON)
endif(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_EXTI0_1_ENABLE)

if(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_EXTI2_3_ENABLE)
	distortosSetFixedConfiguration(BOOLEAN
			DISTORTOS_ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_EXTI2_3_ENABLE
			ON)
endif(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_EXTI2_3_ENABLE)

if(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_EXTI4_15_ENABLE)
	distortosSetFixedConfiguration(BOOLEAN
			DISTORTOS_ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_EXTI4_15_ENABLE
			ON)
endif(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_EXTI4_15_ENABLE)

if(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_TSC_ENABLE)
	distortosSetFixedConfiguration(BOOLEAN
			DISTORTOS_ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_TSC_ENABLE
			ON)
endif(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_TSC_ENABLE)

if(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_DMA1_CHANNEL1_ENABLE)
	distortosSetFixedConfiguration(BOOLEAN
			DISTORTOS_ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_DMA1_CHANNEL1_ENABLE
			ON)
endif(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_DMA1_CHANNEL1_ENABLE)

if(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_DMA1_CHANNEL2_ENABLE)
	set(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_DMA1_CHANNEL2_3_ENABLE ON)
endif(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_DMA1_CHANNEL2_ENABLE)

if(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_DMA1_CHANNEL3_ENABLE)
	set(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_DMA1_CHANNEL2_3_ENABLE ON)
endif(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_DMA1_CHANNEL3_ENABLE)

if(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_DMA1_CHANNEL2_3_ENABLE)
	distortosSetFixedConfiguration(BOOLEAN
			DISTORTOS_ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_DMA1_CHANNEL2_3_ENABLE
			ON)
endif(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_DMA1_CHANNEL2_3_ENABLE)

if(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_DMA1_CHANNEL4_ENABLE)
	set(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_DMA1_CHANNEL4_5_6_7_ENABLE ON)
endif(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_DMA1_CHANNEL4_ENABLE)

if(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_DMA1_CHANNEL5_ENABLE)
	set(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_DMA1_CHANNEL4_5_6_7_ENABLE ON)
endif(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_DMA1_CHANNEL5_ENABLE)

if(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_DMA1_CHANNEL6_ENABLE)
	set(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_DMA1_CHANNEL4_5_6_7_ENABLE ON)
endif(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_DMA1_CHANNEL6_ENABLE)

if(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_DMA1_CHANNEL7_ENABLE)
	set(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_DMA1_CHANNEL4_5_6_7_ENABLE ON)
endif(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_DMA1_CHANNEL7_ENABLE)

if(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_DMA1_CHANNEL4_5_6_7_ENABLE)
	distortosSetFixedConfiguration(BOOLEAN
			DISTORTOS_ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_DMA1_CHANNEL4_5_6_7_ENABLE
			ON)
endif(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_DMA1_CHANNEL4_5_6_7_ENABLE)

if(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_ADC1_COMP_ENABLE)
	distortosSetFixedConfiguration(BOOLEAN
			DISTORTOS_ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_ADC1_COMP_ENABLE
			ON)
endif(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_ADC1_COMP_ENABLE)

if(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_LPTIM1_ENABLE)
	distortosSetFixedConfiguration(BOOLEAN
			DISTORTOS_ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_LPTIM1_ENABLE
			ON)
endif(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_LPTIM1_ENABLE)

if(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_USART4_ENABLE)
	set(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_USART4_5_ENABLE ON)
endif(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_USART4_ENABLE)

if(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_USART5_ENABLE)
	set(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_USART4_5_ENABLE ON)
endif(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_USART5_ENABLE)

if(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_USART4_5_ENABLE)
	distortosSetFixedConfiguration(BOOLEAN
			DISTORTOS_ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_USART4_5_ENABLE
			ON)
endif(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_USART4_5_ENABLE)

if(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_TIM2_ENABLE)
	distortosSetFixedConfiguration(BOOLEAN
			DISTORTOS_ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_TIM2_ENABLE
			ON)
endif(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_TIM2_ENABLE)

if(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_TIM3_ENABLE)
	distortosSetFixedConfiguration(BOOLEAN
			DISTORTOS_ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_TIM3_ENABLE
			ON)
endif(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_TIM3_ENABLE)

if(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_TIM6_DAC_ENABLE)
	distortosSetFixedConfiguration(BOOLEAN
			DISTORTOS_ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_TIM6_DAC_ENABLE
			ON)
endif(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_TIM6_DAC_ENABLE)

if(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_TIM7_ENABLE)
	distortosSetFixedConfiguration(BOOLEAN
			DISTORTOS_ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_TIM7_ENABLE
			ON)
endif(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_TIM7_ENABLE)

if(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_TIM21_ENABLE)
	distortosSetFixedConfiguration(BOOLEAN
			DISTORTOS_ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_TIM21_ENABLE
			ON)
endif(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_TIM21_ENABLE)

if(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_I2C3_ENABLE)
	distortosSetFixedConfiguration(BOOLEAN
			DISTORTOS_ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_I2C3_ENABLE
			ON)
endif(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_I2C3_ENABLE)

if(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_TIM22_ENABLE)
	distortosSetFixedConfiguration(BOOLEAN
			DISTORTOS_ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_TIM22_ENABLE
			ON)
endif(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_TIM22_ENABLE)

if(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_I2C1_ENABLE)
	distortosSetFixedConfiguration(BOOLEAN
			DISTORTOS_ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_I2C1_ENABLE
			ON)
endif(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_I2C1_ENABLE)

if(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_I2C2_ENABLE)
	distortosSetFixedConfiguration(BOOLEAN
			DISTORTOS_ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_I2C2_ENABLE
			ON)
endif(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_I2C2_ENABLE)

if(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_SPI1_ENABLE)
	distortosSetFixedConfiguration(BOOLEAN
			DISTORTOS_ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_SPI1_ENABLE
			ON)
endif(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_SPI1_ENABLE)

if(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_SPI2_ENABLE)
	distortosSetFixedConfiguration(BOOLEAN
			DISTORTOS_ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_SPI2_ENABLE
			ON)
endif(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_SPI2_ENABLE)

if(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_USART1_ENABLE)
	distortosSetFixedConfiguration(BOOLEAN
			DISTORTOS_ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_USART1_ENABLE
			ON)
endif(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_USART1_ENABLE)

if(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_USART2_ENABLE)
	distortosSetFixedConfiguration(BOOLEAN
			DISTORTOS_ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_USART2_ENABLE
			ON)
endif(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_USART2_ENABLE)

if(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_AES_RNG_LPUART1_ENABLE)
	distortosSetFixedConfiguration(BOOLEAN
			DISTORTOS_ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_AES_RNG_LPUART1_ENABLE
			ON)
endif(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_AES_RNG_LPUART1_ENABLE)

if(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_LCD_ENABLE)
	distortosSetFixedConfiguration(BOOLEAN
			DISTORTOS_ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_LCD_ENABLE
			ON)
endif(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_LCD_ENABLE)

if(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_USB_ENABLE)
	distortosSetFixedConfiguration(BOOLEAN
			DISTORTOS_ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_USB_ENABLE
			ON)
endif(ARCHITECTURE_ARMV6_M_ARMV7_M_NVIC_USB_ENABLE)

include("${CMAKE_CURRENT_SOURCE_DIR}/source/architecture/ARM/ARMv6-M-ARMv7-M/distortos-sources.cmake")

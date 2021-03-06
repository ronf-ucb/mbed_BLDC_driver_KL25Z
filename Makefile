# This file was automagically generated by mbed.org. For more information, 
# see http://mbed.org/handbook/Exporting-to-GCC-ARM-Embedded

# cross-platform directory manipulation
ifeq ($(shell echo $$OS),$$OS)
    MAKEDIR = if not exist "$(1)" mkdir "$(1)"
    RM = rmdir /S /Q "$(1)"
else
    MAKEDIR = $(SHELL) -c "mkdir -p \"$(1)\""
    RM = $(SHELL) -c "rm -rf \"$(1)\""
endif

ifeq (,$(filter .build,$(notdir $(CURDIR))))
.SUFFIXES:
OBJDIR := .build
mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
MAKETARGET = $(MAKE) --no-print-directory -C $(OBJDIR) -f $(mkfile_path) \
		SRCDIR=$(CURDIR) $(MAKECMDGOALS)
.PHONY: $(OBJDIR) clean
all:
	+@$(call MAKEDIR,$(OBJDIR))
	+@$(MAKETARGET)
$(OBJDIR): all
Makefile : ;
% :: $(OBJDIR) ; :
clean :
	$(call RM,$(OBJDIR))

else

VPATH = .. 

GCC_BIN = 
PROJECT = mbed_BLDC_driver_KL25Z
OBJECTS = mbed-rtos/rtx/TARGET_CORTEX_M/TARGET_M0P/TOOLCHAIN_GCC/HAL_CM0.o mbed-rtos/rtx/TARGET_CORTEX_M/TARGET_M0P/TOOLCHAIN_GCC/SVC_Table.o mbed-dev/targets/cmsis/TARGET_Freescale/TARGET_KLXX/TARGET_KL25Z/TOOLCHAIN_GCC_ARM/startup_MKL25Z4.o MODSERIAL/ChangeLog.o mbed-rtos/rtos/rtos_idle.o mbed-rtos/rtx/TARGET_CORTEX_M/HAL_CM.o mbed-rtos/rtx/TARGET_CORTEX_M/RTX_Conf_CM.o mbed-rtos/rtx/TARGET_CORTEX_M/rt_CMSIS.o mbed-rtos/rtx/TARGET_CORTEX_M/rt_Event.o mbed-rtos/rtx/TARGET_CORTEX_M/rt_List.o mbed-rtos/rtx/TARGET_CORTEX_M/rt_Mailbox.o mbed-rtos/rtx/TARGET_CORTEX_M/rt_MemBox.o mbed-rtos/rtx/TARGET_CORTEX_M/rt_Memory.o mbed-rtos/rtx/TARGET_CORTEX_M/rt_Mutex.o mbed-rtos/rtx/TARGET_CORTEX_M/rt_OsEventObserver.o mbed-rtos/rtx/TARGET_CORTEX_M/rt_Robin.o mbed-rtos/rtx/TARGET_CORTEX_M/rt_Semaphore.o mbed-rtos/rtx/TARGET_CORTEX_M/rt_System.o mbed-rtos/rtx/TARGET_CORTEX_M/rt_Task.o mbed-rtos/rtx/TARGET_CORTEX_M/rt_Time.o mbed-rtos/rtx/TARGET_CORTEX_M/rt_Timer.o mbed-dev/common/mbed_assert.o mbed-dev/common/mbed_board.o mbed-dev/common/mbed_critical.o mbed-dev/common/mbed_error.o mbed-dev/common/mbed_gpio.o mbed-dev/common/mbed_interface.o mbed-dev/common/mbed_lp_ticker_api.o mbed-dev/common/mbed_mem_trace.o mbed-dev/common/mbed_pinmap_common.o mbed-dev/common/mbed_semihost_api.o mbed-dev/common/mbed_ticker_api.o mbed-dev/common/mbed_us_ticker_api.o mbed-dev/common/mbed_wait_api.o mbed-dev/targets/cmsis/TARGET_Freescale/TARGET_KLXX/TARGET_KL25Z/cmsis_nvic.o mbed-dev/targets/cmsis/TARGET_Freescale/TARGET_KLXX/TARGET_KL25Z/system_MKL25Z4.o mbed-dev/targets/hal/TARGET_Freescale/TARGET_KLXX/analogin_api.o mbed-dev/targets/hal/TARGET_Freescale/TARGET_KLXX/analogout_api.o mbed-dev/targets/hal/TARGET_Freescale/TARGET_KLXX/gpio_api.o mbed-dev/targets/hal/TARGET_Freescale/TARGET_KLXX/i2c_api.o mbed-dev/targets/hal/TARGET_Freescale/TARGET_KLXX/pinmap.o mbed-dev/targets/hal/TARGET_Freescale/TARGET_KLXX/port_api.o mbed-dev/targets/hal/TARGET_Freescale/TARGET_KLXX/pwmout_api.o mbed-dev/targets/hal/TARGET_Freescale/TARGET_KLXX/rtc_api.o mbed-dev/targets/hal/TARGET_Freescale/TARGET_KLXX/sleep.o mbed-dev/targets/hal/TARGET_Freescale/TARGET_KLXX/us_ticker.o mbed-dev/targets/hal/TARGET_Freescale/TARGET_KLXX/TARGET_KL25Z/PeripheralPins.o mbed-dev/targets/hal/TARGET_Freescale/TARGET_KLXX/TARGET_KL25Z/gpio_irq_api.o mbed-dev/targets/hal/TARGET_Freescale/TARGET_KLXX/TARGET_KL25Z/mbed_overrides.o mbed-dev/targets/hal/TARGET_Freescale/TARGET_KLXX/TARGET_KL25Z/serial_api.o mbed-dev/targets/hal/TARGET_Freescale/TARGET_KLXX/TARGET_KL25Z/spi_api.o encoder.o main.o packet_parser.o CRC/lib_crc.o MODSERIAL/FLUSH.o MODSERIAL/GETC.o MODSERIAL/INIT.o MODSERIAL/ISR_RX.o MODSERIAL/ISR_TX.o MODSERIAL/MODSERIAL.o MODSERIAL/MODSERIAL_IRQ_INFO.o MODSERIAL/PUTC.o MODSERIAL/RESIZE.o MODSERIAL/example1.o MODSERIAL/example2.o MODSERIAL/example3a.o MODSERIAL/example3b.o MODSERIAL/Device/MODSERIAL_KL05Z.o MODSERIAL/Device/MODSERIAL_KL25Z.o MODSERIAL/Device/MODSERIAL_KSDK.o MODSERIAL/Device/MODSERIAL_LPC11U24.o MODSERIAL/Device/MODSERIAL_LPC1768.o MODSERIAL/Device/MODSERIAL_NUCLEO_F401RE.o MODSERIAL/Device/MODSERIAL_PAC_F401RB.o mbed-rtos/rtos/Mutex.o mbed-rtos/rtos/RtosTimer.o mbed-rtos/rtos/Semaphore.o mbed-rtos/rtos/Thread.o mbed-dev/common/AnalogIn.o mbed-dev/common/BusIn.o mbed-dev/common/BusInOut.o mbed-dev/common/BusOut.o mbed-dev/common/CAN.o mbed-dev/common/CallChain.o mbed-dev/common/Ethernet.o mbed-dev/common/FileBase.o mbed-dev/common/FileLike.o mbed-dev/common/FilePath.o mbed-dev/common/FileSystemLike.o mbed-dev/common/I2C.o mbed-dev/common/I2CSlave.o mbed-dev/common/InterruptIn.o mbed-dev/common/InterruptManager.o mbed-dev/common/LocalFileSystem.o mbed-dev/common/RawSerial.o mbed-dev/common/SPI.o mbed-dev/common/SPISlave.o mbed-dev/common/Serial.o mbed-dev/common/SerialBase.o mbed-dev/common/Stream.o mbed-dev/common/Ticker.o mbed-dev/common/Timeout.o mbed-dev/common/Timer.o mbed-dev/common/TimerEvent.o mbed-dev/common/mbed_alloc_wrappers.o mbed-dev/common/mbed_rtc_time.o mbed-dev/common/retarget.o 
SYS_OBJECTS = 
INCLUDE_PATHS = -I../. -I../CRC -I../MODSERIAL -I../MODSERIAL/Device -I../mbed-rtos -I../mbed-rtos/rtos -I../mbed-rtos/rtx -I../mbed-rtos/rtx/TARGET_CORTEX_M -I../mbed-rtos/rtx/TARGET_CORTEX_M/TARGET_M0P -I../mbed-rtos/rtx/TARGET_CORTEX_M/TARGET_M0P/TOOLCHAIN_GCC -I../mbed-dev -I../mbed-dev/api -I../mbed-dev/common -I../mbed-dev/hal -I../mbed-dev/hal/storage_abstraction -I../mbed-dev/targets -I../mbed-dev/targets/cmsis -I../mbed-dev/targets/cmsis/TARGET_Freescale -I../mbed-dev/targets/cmsis/TARGET_Freescale/TARGET_KLXX -I../mbed-dev/targets/cmsis/TARGET_Freescale/TARGET_KLXX/TARGET_KL25Z -I../mbed-dev/targets/cmsis/TARGET_Freescale/TARGET_KLXX/TARGET_KL25Z/TOOLCHAIN_GCC_ARM -I../mbed-dev/targets/cmsis/TOOLCHAIN_GCC -I../mbed-dev/targets/hal -I../mbed-dev/targets/hal/TARGET_Freescale -I../mbed-dev/targets/hal/TARGET_Freescale/TARGET_KLXX -I../mbed-dev/targets/hal/TARGET_Freescale/TARGET_KLXX/TARGET_KL25Z 
LIBRARY_PATHS = 
LIBRARIES = 
LINKER_SCRIPT = ../mbed-dev/targets/cmsis/TARGET_Freescale/TARGET_KLXX/TARGET_KL25Z/TOOLCHAIN_GCC_ARM/MKL25Z4.ld

############################################################################### 
AS      = $(GCC_BIN)arm-none-eabi-as
CC      = $(GCC_BIN)arm-none-eabi-gcc
CPP     = $(GCC_BIN)arm-none-eabi-g++
LD      = $(GCC_BIN)arm-none-eabi-gcc
OBJCOPY = $(GCC_BIN)arm-none-eabi-objcopy
OBJDUMP = $(GCC_BIN)arm-none-eabi-objdump
SIZE    = $(GCC_BIN)arm-none-eabi-size 


CPU = -mcpu=cortex-m0plus -mthumb 
CC_FLAGS = -c -g -Wall -Wextra -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -mcpu=cortex-m0plus -mthumb -std=gnu99 -DTARGET_KL25Z -D__MBED__=1 -DDEVICE_I2CSLAVE=1 -DTARGET_LIKE_MBED -DTARGET_Freescale -DDEVICE_PORTINOUT=1 -D__MBED_CMSIS_RTOS_CM -DTOOLCHAIN_object -D__CMSIS_RTOS -DTARGET_KLXX -DTARGET_CORTEX_M -DTARGET_M0P -DDEVICE_ANALOGOUT=1 -DTARGET_UVISOR_UNSUPPORTED -DDEVICE_SERIAL=1 -DDEVICE_INTERRUPTIN=1 -DDEVICE_I2C=1 -DDEVICE_PORTOUT=1 -D__CORTEX_M0PLUS -DDEVICE_STDIO_MESSAGES=1 -DTARGET_FF_ARDUINO -DTARGET_RELEASE -DTOOLCHAIN_GCC -DARM_MATH_CM0PLUS -DDEVICE_PORTIN=1 -DDEVICE_SLEEP=1 -DTOOLCHAIN_GCC_ARM -DDEVICE_SPI=1 -DDEVICE_ERROR_RED=1 -DDEVICE_SPISLAVE=1 -DDEVICE_ANALOGIN=1 -DDEVICE_PWMOUT=1 -DDEVICE_SEMIHOST=1 -DMBED_BUILD_TIMESTAMP=1475106340.01 -DTARGET_LIKE_CORTEX_M0 -include mbed_config.h -MMD -MP
CPPC_FLAGS = -c -g -Wall -Wextra -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -mcpu=cortex-m0plus -mthumb -std=gnu++98 -fno-rtti -Wvla -DTARGET_KL25Z -D__MBED__=1 -DDEVICE_I2CSLAVE=1 -DTARGET_LIKE_MBED -DTARGET_Freescale -DDEVICE_PORTINOUT=1 -D__MBED_CMSIS_RTOS_CM -DTOOLCHAIN_object -D__CMSIS_RTOS -DTARGET_KLXX -DTARGET_CORTEX_M -DTARGET_M0P -DDEVICE_ANALOGOUT=1 -DTARGET_UVISOR_UNSUPPORTED -DDEVICE_SERIAL=1 -DDEVICE_INTERRUPTIN=1 -DDEVICE_I2C=1 -DDEVICE_PORTOUT=1 -D__CORTEX_M0PLUS -DDEVICE_STDIO_MESSAGES=1 -DTARGET_FF_ARDUINO -DTARGET_RELEASE -DTOOLCHAIN_GCC -DARM_MATH_CM0PLUS -DDEVICE_PORTIN=1 -DDEVICE_SLEEP=1 -DTOOLCHAIN_GCC_ARM -DDEVICE_SPI=1 -DDEVICE_ERROR_RED=1 -DDEVICE_SPISLAVE=1 -DDEVICE_ANALOGIN=1 -DDEVICE_PWMOUT=1 -DDEVICE_SEMIHOST=1 -DMBED_BUILD_TIMESTAMP=1475106340.01 -DTARGET_LIKE_CORTEX_M0 -include mbed_config.h -MMD -MP
ASM_FLAGS = -x assembler-with-cpp -D__CMSIS_RTOS -D__MBED_CMSIS_RTOS_CM -D__CORTEX_M0PLUS -DARM_MATH_CM0PLUS -c -Wall -Wextra -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -mcpu=cortex-m0plus -mthumb
CC_SYMBOLS = -DTARGET_KL25Z -D__MBED__=1 -DDEVICE_I2CSLAVE=1 -DTARGET_LIKE_MBED -DTARGET_Freescale -DDEVICE_PORTINOUT=1 -D__MBED_CMSIS_RTOS_CM -DTOOLCHAIN_object -D__CMSIS_RTOS -DTARGET_KLXX -DTARGET_CORTEX_M -DTARGET_M0P -DDEVICE_ANALOGOUT=1 -DTARGET_UVISOR_UNSUPPORTED -DDEVICE_SERIAL=1 -DDEVICE_INTERRUPTIN=1 -DDEVICE_I2C=1 -DDEVICE_PORTOUT=1 -D__CORTEX_M0PLUS -DDEVICE_STDIO_MESSAGES=1 -DTARGET_FF_ARDUINO -DTARGET_RELEASE -DTOOLCHAIN_GCC -DARM_MATH_CM0PLUS -DDEVICE_PORTIN=1 -DDEVICE_SLEEP=1 -DTOOLCHAIN_GCC_ARM -DDEVICE_SPI=1 -DDEVICE_ERROR_RED=1 -DDEVICE_SPISLAVE=1 -DDEVICE_ANALOGIN=1 -DDEVICE_PWMOUT=1 -DDEVICE_SEMIHOST=1 -DMBED_BUILD_TIMESTAMP=1475106340.01 -DTARGET_LIKE_CORTEX_M0 

LD_FLAGS =-Wl,--gc-sections -Wl,--wrap,main -Wl,--wrap,_malloc_r -Wl,--wrap,_free_r -Wl,--wrap,_realloc_r -Wl,--wrap,_calloc_r -mcpu=cortex-m0plus -mthumb 
LD_SYS_LIBS = -lstdc++ -lsupc++ -lm -lc -lgcc -lnosys

DEBUG=1

ifeq ($(DEBUG), 1)
  CC_SYMBOLS += -DDEBUG -O0
else
  CC_SYMBOLS += -DNDEBUG -Os
endif


.PHONY: all lst size

all: $(PROJECT).bin $(PROJECT).hex size



.asm.o:
	+@$(call MAKEDIR,$(dir $@))
	$(CC) $(CPU) -c $(ASM_FLAGS) $(CC_SYMBOLS) $(INCLUDE_PATHS) -o $@ $<
.s.o:
	+@$(call MAKEDIR,$(dir $@))
	$(CC) $(CPU) -c $(ASM_FLAGS) $(CC_SYMBOLS) $(INCLUDE_PATHS) -o $@ $<
.S.o:
	+@$(call MAKEDIR,$(dir $@))
	$(CC) $(CPU) -c $(ASM_FLAGS) $(CC_SYMBOLS) $(INCLUDE_PATHS) -o $@ $<

.c.o:
	+@$(call MAKEDIR,$(dir $@))
	$(CC)  $(CC_FLAGS) $(CC_SYMBOLS) $(INCLUDE_PATHS) -o $@ $<

.cpp.o:
	+@$(call MAKEDIR,$(dir $@))
	$(CPP) $(CPPC_FLAGS) $(CC_SYMBOLS) $(INCLUDE_PATHS) -o $@ $<



$(PROJECT).elf: $(OBJECTS) $(SYS_OBJECTS) $(LINKER_SCRIPT)
	$(LD) $(LD_FLAGS) -T$(filter %.ld, $^) $(LIBRARY_PATHS) -o $@ $(filter %.o, $^) -Wl,--start-group $(LIBRARIES) $(LD_SYS_LIBS) -Wl,--end-group


$(PROJECT).bin: $(PROJECT).elf
	$(OBJCOPY) -O binary $< $@

$(PROJECT).hex: $(PROJECT).elf
	@$(OBJCOPY) -O ihex $< $@

$(PROJECT).lst: $(PROJECT).elf
	@$(OBJDUMP) -Sdh $< > $@

lst: $(PROJECT).lst

size: $(PROJECT).elf
	$(SIZE) $(PROJECT).elf

DEPS = $(OBJECTS:.o=.d) $(SYS_OBJECTS:.o=.d)
-include $(DEPS)


endif

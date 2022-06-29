################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

-include makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include rzv_gen/subdir.mk
-include rzv/fsp/src/r_ioport/subdir.mk
-include rzv/fsp/src/r_gtm/subdir.mk
-include rzv/fsp/src/bsp/mcu/all/subdir.mk
-include rzv/fsp/src/bsp/cmsis/Device/RENESAS/Source/subdir.mk
-include rzv/board/rzv2l_smarc/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_UPPER_DEPS)),)
-include $(CC_UPPER_DEPS)
endif
ifneq ($(strip $(C++_UPPER_DEPS)),)
-include $(C++_UPPER_DEPS)
endif
ifneq ($(strip $(CPP_UPPER_DEPS)),)
-include $(CPP_UPPER_DEPS)
endif
ifneq ($(strip $(FSY_DEPS)),)
-include $(FSY_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(SRC_UPPER_DEPS)),)
-include $(SRC_UPPER_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(PP_UPPER_DEPS)),)
-include $(PP_UPPER_DEPS)
endif
ifneq ($(strip $(P_DEPS)),)
-include $(P_DEPS)
endif
ifneq ($(strip $(JMP_UPPER_DEPS)),)
-include $(JMP_UPPER_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(SX_UPPER_DEPS)),)
-include $(SX_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(JMP_DEPS)),)
-include $(JMP_DEPS)
endif
ifneq ($(strip $(CXX_UPPER_DEPS)),)
-include $(CXX_UPPER_DEPS)
endif
ifneq ($(strip $(P_UPPER_DEPS)),)
-include $(P_UPPER_DEPS)
endif
ifneq ($(strip $(FSY_UPPER_DEPS)),)
-include $(FSY_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(SRC_DEPS)),)
-include $(SRC_DEPS)
endif
ifneq ($(strip $(PP_DEPS)),)
-include $(PP_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(SX_DEPS)),)
-include $(SX_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
rzv2l_flappyai.hex \

SECONDARY_SIZE += \
rzv2l_flappyai.siz \


# All Target
all: rzv2l_flappyai.elf secondary-outputs

# Tool invocations
rzv2l_flappyai.elf: $(OBJS) $(USER_OBJS) $(LIBRARY_GENERATOR_OUTPUTTYPE_OUTPUTS) $(LINKER_SCRIPT)
	$(file > rzv2l_flappyai.elf.in,-mthumb -mcpu=cortex-m33+nodsp+nofp -fdiagnostics-parseable-fixits -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal -Wnull-dereference -g -o "rzv2l_flappyai.elf" -Wl,--start-group $(OBJS) $(USER_OBJS) -Wl,--end-group -T "fsp.ld" -L"C:\\workspace\\RZV2L\\rzv2l_flappyai/script" -Wl,--start-group  -Wl,--end-group -nostartfiles -Xlinker --gc-sections -Wl,-Map,"rzv2l_flappyai.map" --specs=nano.specs --specs=rdimon.specs)
	@echo Building target: $@ && arm-none-eabi-g++ @"rzv2l_flappyai.elf.in"
rzv2l_flappyai.hex: rzv2l_flappyai.elf
	arm-none-eabi-objcopy -O ihex "rzv2l_flappyai.elf"  "rzv2l_flappyai.hex"
rzv2l_flappyai.siz: rzv2l_flappyai.elf
	arm-none-eabi-size --format=berkeley "rzv2l_flappyai.elf"
# Other Targets
clean:
	-$(file > clean_file.tmp,  $(CC_UPPER_DEPS)  $(C++_UPPER_DEPS)  $(CPP_UPPER_DEPS)  $(FSY_DEPS)  $(C_UPPER_DEPS)  $(SECONDARY_SIZE)  $(SRC_UPPER_DEPS)  $(S_DEPS)  $(PP_UPPER_DEPS)  $(P_DEPS)  $(JMP_UPPER_DEPS)  $(ASM_UPPER_DEPS)  $(SX_UPPER_DEPS)  $(CXX_DEPS)  $(JMP_DEPS)  $(CXX_UPPER_DEPS)  $(P_UPPER_DEPS)  $(LST)  $(FSY_UPPER_DEPS)  $(C_DEPS)  $(SRC_DEPS)  $(PP_DEPS)  $(CC_DEPS)  $(SX_DEPS)  $(C++_DEPS)  $(OBJS)  $(SECONDARY_FLASH)  $(ASM_DEPS)  $(S_UPPER_DEPS)  $(MAP)  $(CPP_DEPS) )
	-@ xargs -P 2 -s 32000 -t -a clean_file.tmp $(RM)
	-@$(RM) clean_file.tmp
	-$(RM)  rzv2l_flappyai.elf
	-@echo ' '

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_SIZE)

.PHONY: all clean dependents 

-include ../makefile.targets

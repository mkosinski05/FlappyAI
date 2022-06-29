################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rzv/fsp/src/r_gtm/r_gtm.c 

LST += \
r_gtm.lst 

C_DEPS += \
./rzv/fsp/src/r_gtm/r_gtm.d 

OBJS += \
./rzv/fsp/src/r_gtm/r_gtm.o 

MAP += \
rzv2l_flappyai.map 


# Each subdirectory must supply rules for building sources it contributes
rzv/fsp/src/r_gtm/%.o: ../rzv/fsp/src/r_gtm/%.c
	@echo 'Building file: $<'
	$(file > $@.in,-mthumb -mcpu=cortex-m33+nodsp+nofp -fdiagnostics-parseable-fixits -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal -Wnull-dereference -g -D_RENESAS_RZV_ -I"C:/workspace/RZV2L/rzv2l_flappyai/generate" -I"C:/workspace/RZV2L/rzv2l_flappyai/src" -I"C:\\workspace\\RZV2L\\rzv2l_flappyai\\rzv\\arm\\CMSIS_5\\CMSIS\\Core\\Include" -I"C:\\workspace\\RZV2L\\rzv2l_flappyai\\src" -I"C:\\workspace\\RZV2L\\rzv2l_flappyai\\rzv\\fsp\\inc" -I"C:\\workspace\\RZV2L\\rzv2l_flappyai\\rzv\\fsp\\inc\\api" -I"C:\\workspace\\RZV2L\\rzv2l_flappyai\\rzv\\fsp\\inc\\instances" -I"C:\\workspace\\RZV2L\\rzv2l_flappyai\\rzv\\fsp\\src\\bsp\\mcu\\rzv2l" -I"C:\\workspace\\RZV2L\\rzv2l_flappyai\\rzv_gen" -I"C:\\workspace\\RZV2L\\rzv2l_flappyai\\rzv_cfg\\fsp_cfg\\bsp" -I"C:\\workspace\\RZV2L\\rzv2l_flappyai\\rzv_cfg\\fsp_cfg" -std=c99 -mcmse -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<")
	@echo $< && arm-none-eabi-gcc @"$@.in"


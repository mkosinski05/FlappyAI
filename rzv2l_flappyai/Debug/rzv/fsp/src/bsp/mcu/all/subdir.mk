################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rzv/fsp/src/bsp/mcu/all/bsp_clocks.c \
../rzv/fsp/src/bsp/mcu/all/bsp_common.c \
../rzv/fsp/src/bsp/mcu/all/bsp_delay.c \
../rzv/fsp/src/bsp/mcu/all/bsp_group_irq.c \
../rzv/fsp/src/bsp/mcu/all/bsp_guard.c \
../rzv/fsp/src/bsp/mcu/all/bsp_io.c \
../rzv/fsp/src/bsp/mcu/all/bsp_irq.c \
../rzv/fsp/src/bsp/mcu/all/bsp_irqs.c \
../rzv/fsp/src/bsp/mcu/all/bsp_sbrk.c \
../rzv/fsp/src/bsp/mcu/all/bsp_security.c 

LST += \
bsp_clocks.lst \
bsp_common.lst \
bsp_delay.lst \
bsp_group_irq.lst \
bsp_guard.lst \
bsp_io.lst \
bsp_irq.lst \
bsp_irqs.lst \
bsp_sbrk.lst \
bsp_security.lst 

C_DEPS += \
./rzv/fsp/src/bsp/mcu/all/bsp_clocks.d \
./rzv/fsp/src/bsp/mcu/all/bsp_common.d \
./rzv/fsp/src/bsp/mcu/all/bsp_delay.d \
./rzv/fsp/src/bsp/mcu/all/bsp_group_irq.d \
./rzv/fsp/src/bsp/mcu/all/bsp_guard.d \
./rzv/fsp/src/bsp/mcu/all/bsp_io.d \
./rzv/fsp/src/bsp/mcu/all/bsp_irq.d \
./rzv/fsp/src/bsp/mcu/all/bsp_irqs.d \
./rzv/fsp/src/bsp/mcu/all/bsp_sbrk.d \
./rzv/fsp/src/bsp/mcu/all/bsp_security.d 

OBJS += \
./rzv/fsp/src/bsp/mcu/all/bsp_clocks.o \
./rzv/fsp/src/bsp/mcu/all/bsp_common.o \
./rzv/fsp/src/bsp/mcu/all/bsp_delay.o \
./rzv/fsp/src/bsp/mcu/all/bsp_group_irq.o \
./rzv/fsp/src/bsp/mcu/all/bsp_guard.o \
./rzv/fsp/src/bsp/mcu/all/bsp_io.o \
./rzv/fsp/src/bsp/mcu/all/bsp_irq.o \
./rzv/fsp/src/bsp/mcu/all/bsp_irqs.o \
./rzv/fsp/src/bsp/mcu/all/bsp_sbrk.o \
./rzv/fsp/src/bsp/mcu/all/bsp_security.o 

MAP += \
rzv2l_flappyai.map 


# Each subdirectory must supply rules for building sources it contributes
rzv/fsp/src/bsp/mcu/all/%.o: ../rzv/fsp/src/bsp/mcu/all/%.c
	@echo 'Building file: $<'
	$(file > $@.in,-mthumb -mcpu=cortex-m33+nodsp+nofp -fdiagnostics-parseable-fixits -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal -Wnull-dereference -g -D_RENESAS_RZV_ -I"C:/workspace/RZV2L/rzv2l_flappyai/generate" -I"C:/workspace/RZV2L/rzv2l_flappyai/src" -I"C:\\workspace\\RZV2L\\rzv2l_flappyai\\rzv\\arm\\CMSIS_5\\CMSIS\\Core\\Include" -I"C:\\workspace\\RZV2L\\rzv2l_flappyai\\src" -I"C:\\workspace\\RZV2L\\rzv2l_flappyai\\rzv\\fsp\\inc" -I"C:\\workspace\\RZV2L\\rzv2l_flappyai\\rzv\\fsp\\inc\\api" -I"C:\\workspace\\RZV2L\\rzv2l_flappyai\\rzv\\fsp\\inc\\instances" -I"C:\\workspace\\RZV2L\\rzv2l_flappyai\\rzv\\fsp\\src\\bsp\\mcu\\rzv2l" -I"C:\\workspace\\RZV2L\\rzv2l_flappyai\\rzv_gen" -I"C:\\workspace\\RZV2L\\rzv2l_flappyai\\rzv_cfg\\fsp_cfg\\bsp" -I"C:\\workspace\\RZV2L\\rzv2l_flappyai\\rzv_cfg\\fsp_cfg" -std=c99 -mcmse -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<")
	@echo $< && arm-none-eabi-gcc @"$@.in"


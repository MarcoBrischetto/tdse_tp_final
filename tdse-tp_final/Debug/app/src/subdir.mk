################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../app/src/app.c \
../app/src/configuracion.c \
../app/src/display.c \
../app/src/logger.c \
../app/src/task_actuator.c \
../app/src/task_actuator_interface.c \
../app/src/task_normal.c \
../app/src/task_normal_interface.c \
../app/src/task_sensor.c \
../app/src/task_set_up.c \
../app/src/task_set_up_interface.c 

OBJS += \
./app/src/app.o \
./app/src/configuracion.o \
./app/src/display.o \
./app/src/logger.o \
./app/src/task_actuator.o \
./app/src/task_actuator_interface.o \
./app/src/task_normal.o \
./app/src/task_normal_interface.o \
./app/src/task_sensor.o \
./app/src/task_set_up.o \
./app/src/task_set_up_interface.o 

C_DEPS += \
./app/src/app.d \
./app/src/configuracion.d \
./app/src/display.d \
./app/src/logger.d \
./app/src/task_actuator.d \
./app/src/task_actuator_interface.d \
./app/src/task_normal.d \
./app/src/task_normal_interface.d \
./app/src/task_sensor.d \
./app/src/task_set_up.d \
./app/src/task_set_up_interface.d 


# Each subdirectory must supply rules for building sources it contributes
app/src/%.o app/src/%.su app/src/%.cyclo: ../app/src/%.c app/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../app/inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-app-2f-src

clean-app-2f-src:
	-$(RM) ./app/src/app.cyclo ./app/src/app.d ./app/src/app.o ./app/src/app.su ./app/src/configuracion.cyclo ./app/src/configuracion.d ./app/src/configuracion.o ./app/src/configuracion.su ./app/src/display.cyclo ./app/src/display.d ./app/src/display.o ./app/src/display.su ./app/src/logger.cyclo ./app/src/logger.d ./app/src/logger.o ./app/src/logger.su ./app/src/task_actuator.cyclo ./app/src/task_actuator.d ./app/src/task_actuator.o ./app/src/task_actuator.su ./app/src/task_actuator_interface.cyclo ./app/src/task_actuator_interface.d ./app/src/task_actuator_interface.o ./app/src/task_actuator_interface.su ./app/src/task_normal.cyclo ./app/src/task_normal.d ./app/src/task_normal.o ./app/src/task_normal.su ./app/src/task_normal_interface.cyclo ./app/src/task_normal_interface.d ./app/src/task_normal_interface.o ./app/src/task_normal_interface.su ./app/src/task_sensor.cyclo ./app/src/task_sensor.d ./app/src/task_sensor.o ./app/src/task_sensor.su ./app/src/task_set_up.cyclo ./app/src/task_set_up.d ./app/src/task_set_up.o ./app/src/task_set_up.su ./app/src/task_set_up_interface.cyclo ./app/src/task_set_up_interface.d ./app/src/task_set_up_interface.o ./app/src/task_set_up_interface.su

.PHONY: clean-app-2f-src


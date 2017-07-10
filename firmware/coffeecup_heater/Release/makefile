################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
LSS += \
coffeecup_heater.lss \

FLASH_IMAGE += \
coffeecup_heater.hex \

SIZEDUMMY += \
sizedummy \


# All Target
all: coffeecup_heater.elf secondary-outputs

# Tool invocations
coffeecup_heater.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: AVR C Linker'
	avr-gcc -Wl,-Map,coffeecup_heater.map -mmcu=attiny45 -o "coffeecup_heater.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

coffeecup_heater.lss: coffeecup_heater.elf
	@echo 'Invoking: AVR Create Extended Listing'
	-avr-objdump -h -S coffeecup_heater.elf  >"coffeecup_heater.lss"
	@echo 'Finished building: $@'
	@echo ' '

coffeecup_heater.hex: coffeecup_heater.elf
	@echo 'Create Flash image (ihex format)'
	-avr-objcopy -R .eeprom -R .fuse -R .lock -R .signature -O ihex coffeecup_heater.elf  "coffeecup_heater.hex"
	@echo 'Finished building: $@'
	@echo ' '

sizedummy: coffeecup_heater.elf
	@echo 'Invoking: Print Size'
	-avr-size --format=avr --mcu=attiny45 coffeecup_heater.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(FLASH_IMAGE)$(ELFS)$(OBJS)$(ASM_DEPS)$(S_DEPS)$(SIZEDUMMY)$(S_UPPER_DEPS)$(LSS)$(C_DEPS) coffeecup_heater.elf
	-@echo ' '

secondary-outputs: $(LSS) $(FLASH_IMAGE) $(SIZEDUMMY)

.PHONY: all clean dependents

-include ../makefile.targets

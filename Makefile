PROJECT_NAME := acht_os
TOOLCHAIN_PREFIX = avr-
APPLICATION_TYPE = EMBEDDED
VERBOSE = 1



# toggle debug mode
ifneq ($(DEBUG), 1)
OPT_FLAGS = -O2 
else
OPT_FLAGS = -O0 -g
endif

SYMBOLS += F_CPU=16000000UL

ARCH_FLAGS = -mmcu=atmega328p

ERROR_FLAGS = -Wall

CXXFLAGS = -std=gnu++17 $(OPT_FLAGS) $(ARCH_FLAGS) $(ERROR_FLAGS)

ASFLAGS = $(ARCH_FLAGS)



include ./cpmk/project.mk
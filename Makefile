BUILD_DIR ?= .

CC = gcc
CFLAGS_DEBUG = -g -O0 -Wall
CFLAGS_RELEASE = -O2 -Wall
TARGET = $(BUILD_DIR)/hello

SRC = main.c
OBJ = $(addprefix $(BUILD_DIR)/, $(notdir $(SRC:.c=.o)))

.PHONY: all release clean

all: CFLAGS = $(CFLAGS_DEBUG)
all: $(TARGET)

release: CFLAGS = $(CFLAGS_RELEASE)
release: $(TARGET)

$(BUILD_DIR)/%.o: %.c
        @mkdir -p $(BUILD_DIR)
        $(CC) $(CFLAGS) -c -o $@ $<

$(TARGET): $(OBJ)
        $(CC) $(CFLAGS) -o $@ $^

clean:
        rm -rf $(BUILD_DIR)

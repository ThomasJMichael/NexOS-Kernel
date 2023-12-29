BUILD_DIR?=build
ASM?=nasm

SRC_DIR = src

KERNEL_NAME = kernel
KERNEL_SRC  = $(SRC_DIR)/main.asm
KERNEL_BIN  = $(BUILD_DIR)/$(KERNEL_NAME).bin

$(shell mkdir -p $(BUILD_DIR))

all: $(KERNEL_BIN)

$(KERNEL_BIN):
	$(ASM) $(KERNEL_SRC) -f bin -o $(KERNEL_BIN)

clean:
	rm -f $(KERNEL_BIN)

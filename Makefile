TARGET = sketch

ROM_DIR = ./roms
ASM = ./uxn/bin/uxnasm
EMU = ./uxn/bin/uxnemu

SRC = ${TARGET}.tal
OUT = ${ROM_DIR}/${TARGET}.rom


.PHONY: run clean

run: ${OUT}
	@${EMU} ${OUT}

${OUT}:
	@echo "Building ${SRC}"
	@mkdir -p $(ROM_DIR)
	@${ASM} ${SRC} ${OUT}

.PHONY: clean
clean:
	rm -rf ${ROM_DIR}

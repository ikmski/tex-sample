#
#
TARGET = hello

OUTPUT_DIR = output

.PHONY: build
build: $(OUTPUT_DIR)/$(TARGET).pdf

$(OUTPUT_DIR)/$(TARGET).pdf: $(TARGET).tex
	@if [ ! -d $(OUTPUT_DIR) ]; \
		then echo "mkdir -p $(OUTPUT_DIR)"; mkdir -p $(OUTPUT_DIR); \
	fi
	ptex2pdf -l -output-directory=$(OUTPUT_DIR) $<

.PHONY: clean
clean:
	rm $(OUTPUT_DIR)/*

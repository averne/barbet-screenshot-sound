TARGET := $(notdir $(CURDIR)).zip
FILES  := META-INF system module.prop

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(shell find $(FILES) -type f)
	@zip $(TARGET) -r $(FILES)

clean:
	@rm $(TARGET)

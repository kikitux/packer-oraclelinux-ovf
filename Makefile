

TEMPLATE_FILES := $(wildcard *.json)
ALLBOX := $(TEMPLATE_FILES:.json=.box)

.PHONY: all clean cleanall
all: $(ALLBOX)

%.box: %.json
	packer validate $<
	packer build $<

clean:
	-rm $(ALLBOX)

cleanall: clean
	-rm packer_cache/*ova

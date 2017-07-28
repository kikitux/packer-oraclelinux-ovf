

TEMPLATE_FILES := $(wildcard *.json)
ALLBOX := $(TEMPLATE_FILES:.json=.box)

.PHONY: all clean cleanall
all: $(ALLBOX)

%.box: %.json
	packer validate $<
	packer build $<

clean:
	-rm $(ALLBOX)

cleanall: clean removebox
	-rm packer_cache/*ova

removebox:
	-@for BOX in $(ALLBOX) ; do vagrant box remove -f $${BOX%%.box} ; done

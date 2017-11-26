# Makefile

export TARGET = raspberrypi3

.PHONY: default linux image clean distclean

default: image;

linux:
	$(MAKE) -C .. linux

image: linux
	cp ../linux/buildroot/output/images/sdcard.img $(TARGET).img

clean:
	$(MAKE) -C .. clean
	rm -rf $(TARGET).img

distclean:
	$(MAKE) -C .. distclean
	rm -rf $(TARGET).img

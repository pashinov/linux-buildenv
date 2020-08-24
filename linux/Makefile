# Makefile

.PHONY: default defconfig build clean distclean

PWD := $(shell pwd)

BR2_DEFCONFIG = $(TARGET)_defconfig

default: build

defconfig:
	$(MAKE) -C buildroot defconfig BR2_DEFCONFIG=$(PWD)/configs/buildroot/$(TARGET)/$(BR2_DEFCONFIG)

build: defconfig
	$(MAKE) -C $(PWD)/buildroot \
		BR2_LINUX_KERNEL_CONFIG_FRAGMENT_FILES=$(PWD)/configs/kernel/$(TARGET)/raspberrypi3_kernel.config
	mv $(PWD)/buildroot/.config $(PWD)/buildroot/output/.config

clean:
	$(MAKE) -C buildroot clean

distclean:
	$(MAKE) -C buildroot distclean

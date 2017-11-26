# Makefile

.PHONY: default defconfig build clean distclean

PWD := $(shell pwd)

MAKE_FLAGS = \
	ARCH="arm"

BR2_DEFCONFIG = $(TARGET)_defconfig

default: build;

defconfig:
	$(MAKE) -C buildroot defconfig BR2_DEFCONFIG=$(PWD)/configs/buildroot/$(TARGET)/$(BR2_DEFCONFIG);

build: defconfig
	$(MAKE) $(MAKE_FLAGS) -C $(PWD)/buildroot \
		BR2_PACKAGE_BUSYBOX_CONFIG=$(PWD)/configs/busybox/$(TARGET)/raspberrypi3_busybox.config \
		BR2_LINUX_KERNEL_CONFIG_FRAGMENT_FILES=$(PWD)/configs/kernel/$(TARGET)/raspberrypi3_kernel.config;
	mv $(PWD)/buildroot/.config $(PWD)/buildroot/output/.config;

clean:
	$(MAKE) -C buildroot $(MAKE_FLAGS) clean;

distclean:
	$(MAKE) -C buildroot $(MAKE_FLAGS) distclean;

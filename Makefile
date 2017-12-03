# Makefile

.PHONY: default linux clean distclean

default: linux

linux:
	$(MAKE) -C linux

clean:
	$(MAKE) -C linux clean

distclean:
	$(MAKE) -C linux distclean

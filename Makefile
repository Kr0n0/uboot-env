all:		uboot-env

install:	uboot-env
	cp uboot-env $INSTALL/sbin
	cp uboot-env.conf $INSTALL/etc

uboot-env:	uboot-env.c
	$(CROSS_COMPILE)gcc -Os -mthumb -o uboot-env uboot-env.c
	$(CROSS_COMPILE)strip uboot-env

clean:		
	rm uboot-env
cmd_spl/u-boot-spl.cfg := arm-none-eabi-gcc -E -Wp,-MD,spl/.u-boot-spl.cfg.d -D__KERNEL__ -D__UBOOT__ -DCONFIG_SYS_TEXT_BASE=0x17800000  -DCONFIG_SPL_BUILD  -D__ARM__ -Wa,-mimplicit-it=always  -mthumb -mthumb-interwork  -mabi=aapcs-linux  -mno-unaligned-access  -ffunction-sections -fdata-sections -fno-common -ffixed-r9  -msoft-float  -pipe  -march=armv7-a   -Iinclude    -I./arch/arm/include -include ./include/linux/kconfig.h  -nostdinc -isystem /usr/lib/gcc/arm-none-eabi/5.4.0/include -include ./include/u-boot/u-boot.lds.h -include ./include/config.h -DCPUDIR=arch/arm/cpu/armv7  -ansi -DDO_DEPS_ONLY -D__ASSEMBLY__ -x assembler-with-cpp -P -dM -E -o spl/u-boot-spl.cfg include/config.h
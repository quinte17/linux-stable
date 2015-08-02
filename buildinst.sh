# build
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- acme-arietta.dtb
make -j8 ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- zImage
make modules -j8 ARCH=arm CROSS_COMPILE=arm-linux-gnueabi-
make modules_install INSTALL_MOD_PATH=./modules ARCH=arm
# inst
scp arch/arm/boot/dts/acme-arietta.dtb root@192.168.10.10:/boot
scp arch/arm/boot/zImage root@192.168.10.10:/boot
rsync -avc modules/lib/. root@192.168.10.10:/lib/.

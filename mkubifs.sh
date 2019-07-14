#!/bin/bash
#mkfs.ubifs –F -q -r rootfs -m 2048 -e 126976 -c 2047 -o ubifs.img
#if [ -d rootfs ];then
#    rm -fr rootfs
#fi

#tar -xvf rootfs.tar -C . ./rootfs
sudo mkfs.ubifs -F -x lzo -m 2048 -e 126976 -c 1023 -o rootfs_ubifs.img -d ./rootfs
#sudo ubinize -v -o ubi.img -m 2048 -p 131072 -O 2048 -s 2048 ubinize.cfg
sudo ubinize -v -o ubi.img -m 2048 -p 131072 -O 2048 -s 2048 ubinize.cfg


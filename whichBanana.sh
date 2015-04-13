#!/bin/bash
#author： Will Xiao
#this simple script is used to choose the correct script.bin for your bananapi or bananapro.
#usage: sudo bash whichBanana.sh [pi|pro] [0|35|5|7] [sdb|sdc|sdd]

VERSION=$1
SCREEN=$2
MOUNTPT=$3

SCRIPT_BIN_DIR=/allwinner/bpi-settings/fex

mkdir -p /mnt/p1
mkdir -p /mnt/p2

mount /dev/${MOUNTPT}1 /mnt/p1
mount /dev/${MOUNTPT}2 /mnt/p2

rm -f /mnt/p1/script.bin
cp -f /mnt/p2/${SCRIPT_BIN_DIR}/banana_${VERSION}_${SCREEN}lcd.bin /mnt/p1/script.bin


umount /mnt/p1
umount /mnt/p2

rm -rf /mnt/p1
rm -rf /mnt/p2

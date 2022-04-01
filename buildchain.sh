#!/bin/bash
# buildchain.sh


sudo pacman -Syyuu;
sudo pacman -Sy sh bash

sudo pacman -Sy which
sudo pacman -Sy sed curl
sudo pacman -Sy make binutils

sudo pacman -Sy gcc git
sudo pacman -Sy g++
sudo pacman -Sy bash patch gzip bzip2 perl tar cpio unzip rsync
sudo pacman -Sy file bc
sudo pacman -Sy sudo dhcpcd wget
sudo pacman -Sy python python3 python-pip
sudo pacman -Sy bazaar
sudo pacman -Sy cvs
sudo pacman -Sy mercurial
sudo pacman -Sy rsync
sudo pacman -Sy scp
sudo pacman -Sy subversion
sudo pacman -Sy arch-install-scripts
sudo pacman -Sy awk
sudo pacman -Sy dosfstools
sudo pacman -Sy e2fsprogs
sudo pacman -Sy findutils
sudo pacman -Sy gzip
sudo pacman -Sy libarchive
sudo pacman -Sy libisoburn
sudo pacman -Sy mtools
sudo pacman -Sy openssl
sudo pacman -Sy pacman
sudo pacman -Sy sed
sudo pacman -Sy squashfs-tools
sudo pacman -Sy edk2-ovmf
sudo pacman -Sy qemu


sudo useradd delta
sudo gpasswd -a delta wheel;
sudo mkdir /home/delta;
sudo su delta
sudo mkdir -p /home/delta/buildchain
sudo chmod 777 -R /home/delta/buildchain
sudo chown delta -hR /home/delta/buildchain
cd /home/delta/buildchain
sudo git clone https://github.com/bootlin/buildroot-toolchains.git /home/delta/buildchain/bootlin

sudo mkdir -p /home/delta/buildchain/archiso
cp -r /usr/share/archiso/configs/releng /home/delta/buildchain/archiso




sudo chown delta -hR ./*
sudo chmod 777 -R ./*


dir = '/home/delta/buildchain/archiso/airootfs/'
mkdir -p /home/delta/buildchain/archiso/airootfs/etc/iptables
mkdir -p /home/delta/buildchain/archiso/airootfs/usr/share/local
mkdir -p /home/delta/buildchain/archiso/airootfs/home/delta
sudo cp -r /home/delta/* /home/delta/buildchain/archiso/airootfs/home/delta

cp -r /etc/iptables /home/delta/buildchain/archiso/airootfs/etc/iptables
cp -r /etc/hostname /home/delta/buildchain/archiso/airootfs/etc/hostname
mkdir -p archlive/airootfs/etc/systemd/system/multi-user.target.wants
ln -s /usr/lib/systemd/system/gpm.service /home/delta/buildchain/archiso/airootfs/etc/systemd/system/multi-user.target.wants/
ls -l /etc/systemd/system/display-manager.service
mkdir -p /home/delta/buildchain/archiso/airootfs/etc/systemd/system/
ln -s /usr/lib/systemd/system/sddm.service /home/delta/buildchain/archiso/airootfs/etc/systemd/system/display-manager.service
sudo cp -r /etc/passwd /home/delta/buildchain/archiso/airootfs/etc/passwd
sudo cp -r /etc/shadow /home/delta/buildchain/archiso/airootfs/etc/shadow
sudo cp -r /etc/group /home/delta/buildchain/archiso/airootfs/etc/group

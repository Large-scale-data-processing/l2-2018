#!/bin/bash
rm -rf /etc/pacman.d/gnupg
rm -rf /var/lib/pacman/db.lck
pacman-key --init
pacman-key --populate archlinux
pacman -Syu --noconfirm
pacman -S --noconfirm git base-devel go


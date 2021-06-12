<h1 align="center">Welcome to ArchSpace 🚀</h1>

<p align="center">
<strong >That's awesome and #1 environment for your development!</strong>
</p>

<p align="center">
  <a href="https://github.com/Windslab/ArchSpace"><img alt="Version" src="https://img.shields.io/badge/Version-1.0-green.svg?style=for-the-badge" /></a>
  <a href="https://archlinux.org/"><img alt="Version" src="https://img.shields.io/badge/Arch-Linux-blue?style=for-the-badge" /></a>
  <a href="http://www.proxmark.org/"><img alt="Version" src="https://img.shields.io/badge/Proxmark-3-red?style=for-the-badge" /></a>
</p>

![](/Pictures/preview.png)

## Single command to start

```sh
sh -c "$(cd /var/tmp && curl -fsSL https://raw.githubusercontent.com/Windslab/ArchSpace/master/setup.sh)"
```

## Work in safe Sandbox

<table align="center">
  <thead>
  <tbody>
    <tr>
      <td rowspan = "2" align="center"><a href="https://yev.ooo/r/Arch-Linux-VMware-Image"><img src="./Pictures/download.svg" width="520" ></a></td>
      <td align="center">👮‍♂️ root</td>
      <td align="center">🙎‍ as</td>
    </tr>
    <tr>
      <td align="center">🗝️ qwerty</td>
      <td align="center">🗝️ qwerty</td>
    </tr>
  </tbody>
  <thread>
</table>

>*Ready to use <a href="https://www.vmware.com/products/workstation-pro/workstation-pro-evaluation.html">VMware Workstation 16</a> Sandbox image. It's empty installed system from the official <a href="https://archlinux.org/download/">Arch Linux Downloads</a>.*

## Keyboard Shortcuts

<table align="center">
<tbody>
  <tr>
    <td>Alt + 1-9</td>
    <td><em>Switch between workplaces</em></td>
    <td>Alt + ←/↓/↑/→</td>
    <td><em>Change focus to the window</em></td>
  </tr>
  <tr>
    <td>Alt + F4</td>
    <td><em>Close active workplace</em></td>
    <td>Alt + Shift + ←/↓/↑/→</td>
    <td><em>Move focused window</em></td>
  </tr>
  <tr>
    <td>Alt + Enter</td>
    <td><em>A new terminal window</em></td>
    <td>Alt + H</td>
    <td><em>Split in horizontal orientation</em></td>
  </tr>
  <tr>
    <td>Alt + D</td>
    <td><em>Show a Rofi menu</em></td>
    <td>Alt + V</td>
    <td><em>Split in vertical orientation</em></td>
  </tr>
  <tr>
    <td>Shift + PrtSc</td>
    <td><em>Capture a screenshot</em></td>
    <td>Alt + F</td>
    <td><em>Enter to fullscreen mode</em></td>
  </tr>
  <tr>
    <td>CapsLock</td>
    <td><em>Change a keyboard layout</em></td>
    <td>Alt + S/W/E</td>
    <td><em>Change container layout</em></td>
  </tr>
  <tr>
    <td>Ctrl + Shift + C</td>
    <td><em>Copy selected text from console</em></td>
    <td>Alt + Shift + Space</td>
    <td><em>Toggle tiling / floating</em></td>
  </tr>
  <tr>
    <td>Ctrl + Shift + V</td>
    <td><em>Paste selected text from console</em></td>
    <td>Alt + Space</td>
    <td><em>Toggle focus tiling / floating windows</em></td>
  </tr>
</tbody>
</table>

## Don't know how to begin? Have no Equipment?

> *In many purposes I recommend you to buy a Chinese clone of hardware. It more cheaper and have same functional.*

 - [x] 📟 <a href="https://yev.ooo/r/Proxmark-3">Proxmark3</a>

> *If you not limited by money or would like to have more stable performance both with more options you shall buy an original last version of hardware.*

 - [x] 📟 <a href="https://yev.ooo/r/Proxmark-3-RDV-4x">Proxmark3-RDV4x</a>

>*In case with cards you would pick needed for you types or buy it all by multiple packs*

 - [ ] 💳 <a href="https://yev.ooo/r/Atmel-ATA5577">Atmel ATA5577</a>
 - [ ] 💳 <a href="https://yev.ooo/r/MIFARE-Classic-EV1-S50-1K-4-byte-UID">MIFARE Classic EV1 S50 1K 4 byte UID</a>
 - [x] 💳 <a href="https://yev.ooo/r/MIFARE-Classic-EV1-S50-1K-7-byte-UID">MIFARE Classic EV1 S50 1K 7 byte UID</a>
 - [x] 💳 <a href="https://yev.ooo/r/MIFARE-DESFire-EV1-2-4-8K">MIFARE DESFire EV1 2/4/8K</a>


## Make your own Arch Linux
<details>
  <summary>📂 Basic Installation</summary>

  ```sh
1. lsblk
2. gdisk /dev/nvme0n1
	o > n > Last Sector +512MB > L > EFI > n > w
	lsblk
3. mkfs.ext4 /dev/nvme0n1p2
4. mount /dev/nvme0n1p2 /mnt
5. mkdir /mnt/boot
6. mkfs.vfat /dev/nvme0n1p1
7. mount /dev/nvme0n1p1 /mnt/boot
8. pacman -Sy pacman-contrib
9. cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.backup
10. sed -i 's/^#Server/Server/' /etc/pacman.d/mirrorlist.backup
11. rankmirrors -n 6 /etc/pacman.d/mirrorlist.backup > /etc/pacman.d/mirrorlist
12. pacstrap /mnt base linux linux-firmware
13. genfstab -U /mnt >> /mnt/etc/fstab
14. arch-chroot /mnt
15. bootctl install
16. pacman -S vim
17. vim /boot/loader/loader.conf
	default Arch
18. vim /boot/loader/entries/arch.conf
	title Arch
	linux /vmlinuz-linux
	initrd /initramfs-linux.img
	options root=PARTUUID=<UUID> rw
	:r !blkid
19. vim /etc/locale.gen
20. locale-gen
21. vim /etc/locale.conf
    LANG=en_US.UTF-8
22. pacman -S dhcpcd
23. systemctl enable dhcpcd
24. passwd root
25. useradd -m -g users -G adm,ftp,games,http,log,rfkill,sys,uucp,wheel,lp,tty -s /bin/bash as
26. passwd as
27. pacman -S sudo
28. vim /etc/sudoers
    Uncomment %wheel
29. exit
30. reboot
```
</details>

<details>
  <summary>🔒 CryptoSetup Installation</summary>

```sh
1. lsblk
2. gdisk /dev/nvme0n1
	o > n > Last Sector +512MB > L > EFI > n > w
	lsblk
3. cryptsetup -y -v luksFormat /dev/nvme0n1p2
4. cryptsetup open /dev/nvme0n1p2 cryptroot
5. mkfs.ext4 /dev/mapper/cryptroot
6. mount /dev/mapper/cryptroot /mnt
7. mkdir /mnt/boot
8. mkfs.vfat /dev/nvme0n1p1
9. mount /dev/nvme0n1p1 /mnt/boot
10. pacman -Sy pacman-contrib
11. cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.backup
12. sed -i 's/^#Server/Server/' /etc/pacman.d/mirrorlist.backup
13. rankmirrors -n 6 /etc/pacman.d/mirrorlist.backup > /etc/pacman.d/mirrorlist
14. pacstrap /mnt base linux linux-firmware
15. arch-chroot /mnt
16. bootctl install
17. pacman -S vim
18. vim /etc/mkinitcpio.conf
	HOOKS=(base udev autodetect modconf block filesystems keyboard encrypt fsck)
19. vim /boot/loader/loader.conf
	default Arch
20. vim /boot/loader/entries/arch.conf
	title Arch
	linux /vmlinuz-linux
	initrd /initramfs-linux.img
	options cryptdevice=UUID=<UUID>:cryptroot root=/dev/mapper/cryptroot quiet rw
	:r !blkid
21. mkinitcpio -p linux
22. vim /etc/locale.gen
23. locale-gen
24. vim /etc/locale.conf
	LANG=en_US.UTF-8
25. pacman -S dhcpcd
26. systemctl enable dhcpcd
27. passwd root
28. useradd -m -g users -G adm,ftp,games,http,log,rfkill,sys,uucp,wheel,lp,tty -s /bin/bash as
29. passwd as
30. pacman -S sudo
31. vim /etc/sudoers
	Uncomment %wheel
32. exit
33. reboot
```
</details>

## About

Copyright 2020 ❤️ [Yevgeny Shevchenko](https://github.com/Windslab/ArchSpace)

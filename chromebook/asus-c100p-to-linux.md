# Asus C100PA To Linux
Goal is to install a Linux distribution on Asus C100P laptop. As of July 2020, this model is outside of the support range. So no more updates.


# C100PA Specs:
- CPU is ARMv7 Rockchip 1.8GHz
- 4GB RAM
- 1200x1800 screen
- 16 GB eMMC
- Bluetooth 4.0
- touchscreen
- screen flips around all the way


# Links
- [Guide for arch linux](https://archlinuxarm.org/platforms/armv7/samsung/samsung-chromebook)
- [Post-installation config for arch](https://calvin.me/arch-linux-samsung-arm-chromebook)
- [Tweaks for Arch](http://kmkeen.com/c100p-tweaks/2015-11-06-08-06-41-813.html)


# Which Distro to use?
- [Gallium OS](https://galliumos.org/) - made for Chromebooks, has Xfce (which I want to use anyways)
    - unfortunately, [Gallium does not support C100PA](https://www.gadgetreview.com/asus-flip-c100p-chromebook-review)
    - No
- Crouton
    - keeps ChromeOS installed, uses `chroot` to be installed alongside ChromeOS, like WSL kinda
    - No
- [Cadmium](https://github.com/Maccraft123/Cadmium)
    - specifically specifies C100PA and supports most features of the device
- [PrawnOS](https://github.com/SolidHal/PrawnOS)
    - Maybe, not considered for time
- [Arch linux for ARM](https://archlinuxarm.org/)
    - best support for ARM
    - YES


# Steps
Following [this guide](https://archlinuxarm.org/platforms/armv7/rockchip/asus-chromebook-flip-c100p)

1. Enable developer mode:
    1. Power off device
    2. Hold Escape and Refresh button (4th button from the right on the top row), power on
    3. Press ctrl+d
    4. Turn OS verification off by pressing enter
    5. A reboot will happen
    6. press ctrl+d again
    7. Wait while developer mode is enabled
    - Whenever booting the device, ctrl+d will be needed to be pressed to continue to boot into developer mode
    - Note that in developer mode we can type `shell` in `crosh` to get a functional bash shell (ctrl+alt+t, then `shell`)
2. Enable booting from external storgate
    - Get a shell: ctrl+alt+t, `shell`
    - `sudo su`
    - `crossystem dev_boot_usb=1 dev_boot_signed_only=0`
    - reboot
3. Get some USB drive and plug it into the Chromebook
    - Check to see it is recognized by running: `df | grep -i "sda"`. It should be mounted as sda1
4. Follow arch guide instructions...
    1. In a **root** shell (`sudo su`) run the following:
```sh
umount /dev/sda*
fdisk /dev/sda
# type `g`
# type `w`
# in my case it gave an error: `Re-reading the parition table failed.: Device or resource busy`. The second time I tried it it worked
cgpt create /dev/sda
cgpt add -i 1 -t kernel -b 8192 -s 32768 -l Kernel -S 1 -T 5 -P 10 /dev/sda
# How big to make partition?:
cgpt show /dev/sda      # Make sure this looks like whats in the guide with a ChromeOS kernel partition
# use the `start` number in the output in the following command as `xxx`:
cgpt add -i 2 -t data -b 40960 -s `expr xxx - 40960` -l Root /dev/sda
cgpt show /dev/sda  # Verify
partx -a /dev/sda   # got an error, I ran `cgpt repair /dev/sda` and restarted from the top

# Continuing on even though the previous errors, I see /dev/sda and /dev/sda1 and /dev/sda2
mkfs.ext4 /dev/sda2

cd /tmp
curl -LO http://os.archlinuxarm.org/os/ArchLinuxARM-veyron-latest.tar.gz
mkdir root
mount /dev/sda2 root
tar -xf ArchLinuxARM-veyron-latest.tar.gz -C root
dd if=root/boot/vmlinux.kpart of=/dev/sda1
umount root
sync
```
5. Reboot
6. At the start screen, where normally we would press ctrl+d, press ctrl+***u***

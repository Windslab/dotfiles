#!/bin/sh

# Xorg packets
if ! pacman -Qi xf86-video-vesa > /dev/null; then yes | sudo pacman -S xf86-video-vesa; fi
if ! pacman -Qi xorg-bdftopcf > /dev/null; then yes | sudo pacman -S xorg-bdftopcf; fi
if ! pacman -Qi xorg-docs > /dev/null; then yes | sudo pacman -S xorg-docs; fi
if ! pacman -Qi xorg-font-util > /dev/null; then yes | sudo pacman -S xorg-font-util; fi
if ! pacman -Qi xorg-fonts-100dpi > /dev/null; then yes | sudo pacman -S xorg-fonts-100dpi; fi
if ! pacman -Qi xorg-fonts-75dpi > /dev/null; then yes | sudo pacman -S xorg-fonts-75dpi; fi
if ! pacman -Qi xorg-fonts-encodings > /dev/null; then yes | sudo pacman -S xorg-fonts-encodings; fi
if ! pacman -Qi xorg-iceauth > /dev/null; then yes | sudo pacman -S xorg-iceauth; fi
if ! pacman -Qi xorg-mkfontscale > /dev/null; then yes | sudo pacman -S xorg-mkfontscale; fi
if ! pacman -Qi xorg-xkbcomp > /dev/null; then yes | sudo pacman -S xorg-xkbcomp; fi
if ! pacman -Qi xorg-setxkbmap > /dev/null; then yes | sudo pacman -S xorg-setxkbmap; fi
if ! pacman -Qi xorg-server-common > /dev/null; then yes | sudo pacman -S xorg-server-common; fi
if ! pacman -Qi xorg-server > /dev/null; then yes | sudo pacman -S xorg-server; fi
if ! pacman -Qi xorg-server-devel > /dev/null; then yes | sudo pacman -S xorg-server-devel; fi
if ! pacman -Qi xorg-server-xephyr > /dev/null; then yes | sudo pacman -S xorg-server-xephyr; fi
if ! pacman -Qi xorg-server-xnest > /dev/null; then yes | sudo pacman -S xorg-server-xnest; fi
if ! pacman -Qi xorg-xauth > /dev/null; then yes | sudo pacman -S xorg-xauth; fi
if ! pacman -Qi xorg-server-xvfb > /dev/null; then yes | sudo pacman -S xorg-server-xvfb; fi
if ! pacman -Qi xorg-server-xwayland > /dev/null; then yes | sudo pacman -S xorg-server-xwayland; fi
if ! pacman -Qi xorg-sessreg > /dev/null; then yes | sudo pacman -S xorg-sessreg; fi
if ! pacman -Qi xorg-smproxy > /dev/null; then yes | sudo pacman -S xorg-smproxy; fi
if ! pacman -Qi xorg-x11perf > /dev/null; then yes | sudo pacman -S xorg-x11perf; fi
if ! pacman -Qi xorg-xbacklight > /dev/null; then yes | sudo pacman -S xorg-xbacklight; fi
if ! pacman -Qi xorg-xcmsdb > /dev/null; then yes | sudo pacman -S xorg-xcmsdb; fi
if ! pacman -Qi xorg-xcursorgen > /dev/null; then yes | sudo pacman -S xorg-xcursorgen; fi
if ! pacman -Qi xorg-xdpyinfo > /dev/null; then yes | sudo pacman -S xorg-xdpyinfo; fi
if ! pacman -Qi xorg-xdriinfo > /dev/null; then yes | sudo pacman -S xorg-xdriinfo; fi
if ! pacman -Qi xorg-xev > /dev/null; then yes | sudo pacman -S xorg-xev; fi
if ! pacman -Qi xorg-xgamma > /dev/null; then yes | sudo pacman -S xorg-xgamma; fi
if ! pacman -Qi xorg-xhost > /dev/null; then yes | sudo pacman -S xorg-xhost; fi
if ! pacman -Qi xorg-xrandr > /dev/null; then yes | sudo pacman -S xorg-xrandr; fi
if ! pacman -Qi xorg-xinput > /dev/null; then yes | sudo pacman -S xorg-xinput; fi
if ! pacman -Qi xorg-xkbevd > /dev/null; then yes | sudo pacman -S xorg-xkbevd; fi
if ! pacman -Qi xorg-xkbutils > /dev/null; then yes | sudo pacman -S xorg-xkbutils; fi
if ! pacman -Qi xorg-xkill > /dev/null; then yes | sudo pacman -S xorg-xkill; fi
if ! pacman -Qi xorg-xlsatoms > /dev/null; then yes | sudo pacman -S xorg-xlsatoms; fi
if ! pacman -Qi xorg-xlsclients > /dev/null; then yes | sudo pacman -S xorg-xlsclients; fi
if ! pacman -Qi xorg-xmodmap > /dev/null; then yes | sudo pacman -S xorg-xmodmap; fi
if ! pacman -Qi xorg-xpr > /dev/null; then yes | sudo pacman -S xorg-xpr; fi
if ! pacman -Qi xorg-xprop > /dev/null; then yes | sudo pacman -S xorg-xprop; fi
if ! pacman -Qi xorg-xrdb > /dev/null; then yes | sudo pacman -S xorg-xrdb; fi
if ! pacman -Qi xorg-xrefresh > /dev/null; then yes | sudo pacman -S xorg-xrefresh; fi
if ! pacman -Qi xorg-xset > /dev/null; then yes | sudo pacman -S xorg-xset; fi
if ! pacman -Qi xorg-xsetroot > /dev/null; then yes | sudo pacman -S xorg-xsetroot; fi
if ! pacman -Qi xorg-xvinfo > /dev/null; then yes | sudo pacman -S xorg-xvinfo; fi
if ! pacman -Qi xorg-xwd > /dev/null; then yes | sudo pacman -S xorg-xwd; fi
if ! pacman -Qi xorg-xwininfo > /dev/null; then yes | sudo pacman -S xorg-xwininfo; fi
if ! pacman -Qi xorg-xwud > /dev/null; then yes | sudo pacman -S xorg-xwud; fi
if ! pacman -Qi xorg-xinit > /dev/null; then yes | sudo pacman -S xorg-xinit; fi
# Xorg packets
if ! pacman -Qi i3-wm > /dev/null; then yes | sudo pacman -S i3-wm; fi # i3wm
if ! pacman -Qi perl-anyevent-i3 > /dev/null; then yes | sudo pacman -S perl-anyevent-i3; fi # Module for i3wm
if ! pacman -Qi i3blocks > /dev/null; then yes | sudo pacman -S i3blocks; fi # Bar for i3wm
if ! pacman -Qi chromium > /dev/null; then yes | sudo pacman -S chromium; fi # Browser
if ! pacman -Qi xarchiver > /dev/null; then yes | sudo pacman -S xarchiver; fi # Archivator
if ! pacman -Qi ranger > /dev/null; then yes | sudo pacman -S ranger; fi # Console File Manager
if ! pacman -Qi thunar > /dev/null; then yes | sudo pacman -S thunar; fi # GTK File Manager
if ! pacman -Qi gvfs > /dev/null; then yes | sudo pacman -S gvfs; fi # Addon for Thunar
if ! pacman -Qi gparted > /dev/null; then yes | sudo pacman -S gparted; fi # Disk Manager
if ! pacman -Qi rxvt-unicode > /dev/null; then yes | sudo pacman -S rxvt-unicode; fi # Terminal Emulator
if ! pacman -Qi urxvt-perls > /dev/null; then yes | sudo pacman -S urxvt-perls; fi # Addon of plugins for Terminal Emulator
if ! pacman -Qi zsh > /dev/null; then yes | sudo pacman -S zsh; fi # Shell for Terminal Emulator
if ! pacman -Qi neofetch > /dev/null; then yes | sudo pacman -S neofetch; fi # System information in console
if ! pacman -Qi rofi > /dev/null; then yes | sudo pacman -S rofi; fi # Alternative Dmenu
if ! pacman -Qi feh > /dev/null; then yes | sudo pacman -S feh; fi # Wallpaper changer
if ! pacman -Qi mousepad > /dev/null; then yes | sudo pacman -S mousepad; fi # GUI Notepad
if ! pacman -Qi galculator > /dev/null; then yes | sudo pacman -S galculator; fi # GUI Calculator
if ! pacman -Qi scrot > /dev/null; then yes | sudo pacman -S scrot; fi # Screenshot maker
if ! pacman -Qi xclip > /dev/null; then yes | sudo pacman -S xclip; fi # Screenshot to clipboard buffer
if ! pacman -Qi dunst > /dev/null; then yes | sudo pacman -S dunst; fi # Notifications
if ! pacman -Qi lxsession > /dev/null; then yes | sudo pacman -S lxsession; fi # Authorization agent
if ! pacman -Qi sysstat > /dev/null; then yes | sudo pacman -S sysstat; fi # For sensors
if ! pacman -Qi open-vm-tools > /dev/null; then yes | sudo pacman -S open-vm-tools; fi # VMware Tools
if ! pacman -Qi xf86-video-vmware > /dev/null; then yes | sudo pacman -S xf86-video-vmware; fi # Video Driver for VMware Tools
if ! pacman -Qi mesa > /dev/null; then yes | sudo pacman -S mesa; fi # An open-source implementation of the OpenGL specification
if ! pacman -Qi gtkmm3 > /dev/null; then yes | sudo pacman -S gtkmm3; fi # Drag and Drop for VMware Tools
if ! pacman -Qi slock > /dev/null; then yes | sudo pacman -S slock; fi # Simple X display locker
if ! pacman -Qi xautolock > /dev/null; then yes | sudo pacman -S xautolock; fi # Session lock
if ! pacman -Qi make > /dev/null; then yes | sudo pacman -S make; fi # Make for Apple Emoji Font
if ! pacman -Qi arc-gtk-theme > /dev/null; then yes | sudo pacman -S arc-gtk-theme; fi # Darck theme
if ! pacman -Qi arc-icon-theme > /dev/null; then yes | sudo pacman -S arc-icon-theme; fi # Darck icon theme
if ! pacman -Qi ttf-fira-code > /dev/null; then yes | sudo pacman -S ttf-fira-code; fi # FiraCode Font

sudo timedatectl set-timezone "$(curl --fail https://ipapi.co/timezone)" # Set timezone
sudo hostnamectl set-hostname ArchSpace # Set hostname

if ! systemctl is-active --quiet vmtoolsd; then # Enable vmware services
	sudo systemctl enable vmtoolsd
	sudo systemctl start vmtoolsd
fi

if ! [ -d /usr/share/fonts/noto ]; then # Google Emoji Font
	yes | sudo pacman -S noto-fonts-emoji
fi

if ! [ -d ~/.oh-my-zsh ]; then # oh-my-zsh shell check
	cd ~/
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

if ! [ -d ~/.oh-my-zsh/plugins/Antigen ]; then # Antigen highlight plugin check for oh-my-zsh
	mkdir ~/.oh-my-zsh/plugins/Antigen
    curl -L git.io/antigen > ~/.oh-my-zsh/plugins/Antigen/antigen.zsh
fi
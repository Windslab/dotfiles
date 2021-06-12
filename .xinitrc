#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# set keyboard layout

if [ -f /bin/setxkbmap ] ; then
    setxkbmap -option grp:caps_toggle "us,ru" -option grp_led:caps
fi

# set screen resolution

if [ -f /bin/xrandr ] ; then
	W=1920
	H=1080
	HZ=60.00
   	Display=$(xrandr | grep " connected " | awk '{ print$1 }') 
	Mode=$(cvt $W $H $HZ | awk -F '"' '{print $3}')
	xrandr --newmode "$Wx$H_$HZ" $Mode
    xrandr --addmode $Display $Wx$H_$HZ
    xrandr --output $Display --mode $Wx$H_$HZ
fi

# set the background

if [ -f /usr/bin/feh ]; then
    feh --bg-fill ~/Pictures/pm3.png &
fi

# turn off the cpu default bell

if [ -f /usr/bin/xset ]; then
    xset -b
fi

# enable touchpad basics

if [ -f /usr/bin/xinput ]; then
    xinput set-prop "AlpsPS/2 ALPS GlidePoint" \
        "libinput Tapping Enabled" 1 &
    xinput set-prop "AlpsPS/2 ALPS GlidePoint" \
        "libinput Natural Scrolling Enabled" 1 &
fi

# start redshift

if [ -f /usr/bin/redshift ]; then
    redshift &
fi

# start Gnome keyring

if [ -f /usr/bin/gnome-keyring-daemon ]; then
  dbus-update-activation-environment --systemd DISPLAY
  eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
  export SSH_AUTH_SOCK
fi

# start i3 and keep it running

if [ -f /usr/bin/i3 ]; then
    xautolock -time 10 -locker "slock" &
    exec i3
fi

twm &
xclock -geometry 50x50-1+1 &
xterm -geometry 80x50+494+51 &
xterm -geometry 80x20+494-0 &
exec xterm -geometry 80x66+0+0 -name login
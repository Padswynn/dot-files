#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap
xset +fp /usr/share/fonts/local
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

xset s off &        # don't activate screensaver
xset -dpms &        # disable DPMS (Energy Star) features.
xset s noblank &    # don't blank the video device
xsetroot -cursor_name left_ptr
/home/paddy/.local/bin/cleanfullscreen.sh &
redshift &
~/.fehbg &
# protonmail-bridge --no-window &
xrandr --output -DisplayPort-2 --primary --mode 1920x1080 --rotate normal --output HDMI-A-0 --mode 1920x1080 --rotate normal --right-of DisplayPort-2
exec bspwm

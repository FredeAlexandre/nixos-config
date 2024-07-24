#!/bin/sh

# Source global X session scripts.
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape' -e 'keycode 0x86 = Multi_key'

# redshift -PO 3000

feh --no-fehbg --bg-fill "$HOME/Pictures/wallpaper.png"

# export GTK_IM_MODULE='fcitx'
# export QT_IM_MODULE='fcitx'
# export XMODIFIERS='@im=fcitx'

# Uncheck "Allow Overriding System XKB Settings" on Fcitx's XCB add-on settings
# to prevent it from undoing the `xmodmap` above.
# fcitx5 &
exec dwm

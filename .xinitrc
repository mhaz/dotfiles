# Load .Xresources
xrdb $HOME/.Xresources

# Start URxvt daemon
urxvtd -q -o -f

# Add shadows
compton -b --backend xrender -cC -l -18 -t -0 -o 0.1

#  thinkpad volume keys
xbindkeys

# Japanese input with Ibus
ibus-daemon -drxR &

# nm-applet
nm-applet &

# make CapsLock behave like Ctrl:
setxkbmap jp -option ctrl:nocaps

# make short-pressed Ctrl behave like Escape:
xcape -e 'Control_L=Escape'

# load my keybindings
xmodmap .Xmodmap &

# dunst troubleshooting
systemctl --user import-environment DISPLAY

# volume icon on the tray
volumeicon &

# Start wm
#exec openbox-session
exec i3

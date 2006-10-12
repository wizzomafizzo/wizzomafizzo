xsetroot -solid black -cursor_name left_ptr
feh --bg-center ~/images/wallpaper

xset dpms 600

[[ -f ~/.Xmodmap ]] && xmodmap -quiet ~/.Xmodmap
[[ -f ~/.Xdefaults ]] && xrdb -load ~/.Xdefaults

if test -z "$DBUS_SESSION_BUS_ADDRESS" ; then
    eval `dbus-launch --sh-syntax --exit-with-session`
fi

#gnome-panel &
#sleep 3

#xcompmgr -c &
gnome-terminal --hide-menubar --geometry=140x24 &

#unclutter -idle 1 -jitter 2 -root &

#emerald &
#beryl --indirect-rendering --replace &
#exec gnome-session

exec evilwm -term gt -fn -*-terminus-medium-r-*-*-12-*-*-*-*-*-* -fg \#045870 -bg black -fc white -bw 3 -snap 5 #-nosoliddrag
#exec ratpoison > /dev/null

xsetroot -solid black -cursor_name left_ptr
feh --bg-center ~/images/wallpaper

xset dpms 600

[[ -f ~/.Xmodmap ]] && xmodmap -quiet ~/.Xmodmap
[[ -f ~/.Xdefaults ]] && xrdb -load ~/.Xdefaults

if test -z "$DBUS_SESSION_BUS_ADDRESS" ; then
	eval `dbus-launch --sh-syntax --exit-with-session`
fi

devilspie &
unclutter -idle 1 -jitter 2 -root &

#xcompmgr -c &
#gnome-terminal --hide-menubar --command="screen -D -R" --geometry=160x24 &
urxvt -g 160x24 -e screen -D -R &

#emerald &
#beryl --indirect-rendering --replace &

#exec startkde
#exec gnome-session

exec openbox 2> /dev/null

#exec evilwm -term gt -fn -*-terminus-medium-r-*-*-12-*-*-*-*-*-* \
	-fg \#045870 -bg black -fc white -bw 3 -snap 5 #-nosoliddrag
#exec ratpoison 2> /dev/null

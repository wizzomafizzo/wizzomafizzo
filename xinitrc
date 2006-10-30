xsetroot -solid black -cursor_name left_ptr
#feh --bg-center ~/images/wallpaper
pkill wallie
wallie
wallie --next

xset dpms 600

[[ -f ~/.Xmodmap ]] && xmodmap -quiet ~/.Xmodmap
[[ -f ~/.Xdefaults ]] && xrdb -load ~/.Xdefaults

if test -z "$DBUS_SESSION_BUS_ADDRESS" ; then
	eval `dbus-launch --sh-syntax --exit-with-session`
fi

#devilspie &
#unclutter -idle 1 -jitter 2 -root &
#conky &

#xcompmgr &
gnome-terminal --hide-menubar --command="screen -D -R" &
#urxvt -e screen -D -R &

#exec wmii

while true
do
	echo "$($HOME/scripts/mpdrunning) | $($HOME/scripts/lastsync.sh) | $($HOME/scripts/battery) | $(date)"
	sleep 1
done | dwm

#emerald &
#beryl --indirect-rendering --replace &
#exec openbox 2> /dev/null
#exec evilwm -term gt -fn -*-terminus-medium-r-*-*-12-*-*-*-*-*-* -fg \#045870 -bg black -fc white -bw 3 -snap 5 #-nosoliddrag
#exec ratpoison 2> /dev/null

xsetroot -solid black -cursor_name left_ptr
feh --bg-center `ruby -e "puts Dir['/home/wizzo/images/bg/*'].sort_by{rand}.first"`

xset dpms 600

[[ -f ~/.Xmodmap ]] && xmodmap -quiet ~/.Xmodmap
[[ -f ~/.Xdefaults ]] && xrdb -load ~/.Xdefaults

#if test -z "$DBUS_SESSION_BUS_ADDRESS" ; then
#	eval `dbus-launch --sh-syntax --exit-with-session`
#fi

xterm -e screen -D -R &

exec ratpoison 2> /dev/null

#while true
#do
#	echo "$($HOME/scripts/mpdrunning) | $($HOME/scripts/battery) | $($HOME/scripts/date)"
#	sleep 5
#done | dwm

#exec evilwm -term xterm -fn -*-terminus-medium-r-*-*-12-*-*-*-*-*-* -fg \#045870 -bg black -fc white -bw 3 -snap 5 -nosoliddrag

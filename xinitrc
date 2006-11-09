xsetroot -solid black -cursor_name left_ptr
feh --bg-center `ruby -e "puts Dir['/home/wizzo/images/bg/*'].sort_by{rand}.first"`

xset dpms 600

[[ -f ~/.Xmodmap ]] && xmodmap -quiet ~/.Xmodmap
[[ -f ~/.Xdefaults ]] && xrdb -load ~/.Xdefaults

#if test -z "$DBUS_SESSION_BUS_ADDRESS" ; then
#	eval `dbus-launch --sh-syntax --exit-with-session`
#fi

unclutter -idle 1 -jitter 2 -root &

xterm -e screen -D -R &
xterm &

while true; do
        echo "$($HOME/scripts/mpdrunning) | $($HOME/bin/echosound) | $($HOME/scripts/battery) | $($HOME/scripts/temp) | $($HOME/scripts/date)"
        sleep 5
done | dwm

#exec ratpoison
#exec evilwm -term xterm -fn -*-terminus-medium-r-*-*-12-*-*-*-*-*-* -fg \#045870 -bg black -fc white -bw 3 -snap 5 -nosoliddrag

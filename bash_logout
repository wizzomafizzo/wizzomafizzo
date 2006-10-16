case "`tty`" in
	/dev/tty[0-9]) clear
esac

if [ -f ~/.serverauth.* ]; then
	rm -rf ~/.serverauth.*
fi

sudo -k

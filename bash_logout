# Clean up stale ssh server auth files

case "`tty`" in
	/dev/tty[0-9]) clear
esac

if [ -f ~/.serverauth.* ]; then
	rm -rf ~/.serverauth.*
fi

# Kill sudo ticket
sudo -k

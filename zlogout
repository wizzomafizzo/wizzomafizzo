#!/bin/zsh
case "`tty`" in
        /dev/tty[0-9]) clear
esac

sudo -k

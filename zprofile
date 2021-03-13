if [ "$(tty)" = "/dev/tty1" ]; then
	dbus-run-session sway
fi

export LANG=en_US.UTF-8

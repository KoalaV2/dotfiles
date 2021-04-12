if [ "$(tty)" = "/dev/tty1" ]; then
	dbus-run-session sway
fi
eval "$(pyenv init -)"
export LANG=en_US.UTF-8
export BROWSER="/usr/bin/firefox"

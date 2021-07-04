if [ "$(tty)" = "/dev/tty1" ]; then
	dbus-run-session sway
fi
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
export LANG=en_US.UTF-8
export BROWSER="/usr/bin/firefox"

if [ "$(tty)" = "/dev/tty1" ]; then
    dbus-run-session sway
fi
eval "$(pyenv init --path)"

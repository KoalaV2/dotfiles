if uwsm check may-start && uwsm select; then
  exec systemd-cat -t uwsm_start uwsm start default
fi
# if [ "$(tty)" = "/dev/tty1" ]; then
#     dbus-run-session Hyprland
# fi
# eval "$(pyenv init --path)"
eval "$(fzf --zsh)"
# eval $(/usr/bin/gnome-keyring-daemon --start)
# export SSH_AUTH_SOCK
# export GPG_AGENT_INFO


# # Created by `pipx` on 2023-07-27 00:35:13
# export PATH="$PATH:/home/theo/.local/bin"

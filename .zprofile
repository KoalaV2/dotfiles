if [ "$(tty)" = "/dev/tty1" ]; then
    dbus-run-session Hyprland
fi
# eval "$(pyenv init --path)"
eval "$(fzf --zsh)"
export EDITOR=nvim
export LIBVIRT_DEFAULT_URI="qemu:///system"
export _JAVA_AWT_WM_NONREPARENTING=1
export GTK_THEME=Gruvbox-Material-Dark
export BROWSER="/usr/bin/firefox"
export QT_QPA_PLATFORM=wayland-egl
export SDL_VIDEODRIVER=wayland
export XDG_SESSION_TYPE=wayland
export MOZ_ENABLE_WAYLAND=1
export XDG_CURRENT_DESKTOP=Hyprland
export QT_QPA_PLATFORMTHEME=qt5ct
export PYENV_ROOT="$HOME/.pyenv"
export GPGKEY="A48961119519381E"
export MAKEFLAGS="-j$(expr $(nproc) \+ 1)"

# # Created by `pipx` on 2023-07-27 00:35:13
# export PATH="$PATH:/home/theo/.local/bin"

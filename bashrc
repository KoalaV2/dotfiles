# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias open='xdg-open'
alias cat='bat'
alias ls='exa --color=auto --icons'

#PS1='[\u@\h \W]\$ '
export PS1='\w $ '
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	exec dbus-run-session sway
fi


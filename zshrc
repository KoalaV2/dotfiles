export ZSH="/home/theo/.oh-my-zsh"
export ZSH_CUSTOM="/home/koala/.zsh"
ZSH_THEME="robbyrussell"
plugins=(git colorize pip sudo)
source $ZSH/oh-my-zsh.sh

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
ZSH_AUTOSUGGEST_STRATEGY=(history)
ENABLE_CORRECTION="true"
HIST_STAMPS="yyyy-mm-dd"
unsetopt beep
export LANG=en_US.UTF-8


alias ls='exa --icons --color=auto --group-directories-first'
alias cat='bat'
alias open='xdg-open'
alias vim='nvim'
alias wttr='curl https://wttr.in/\~Soedertalje\?0m'
alias rsync='rsync -v --progress'
alias vpnc='sudo wg-quick up homelab'
alias vpnd='sudo wg-quick down homelab'
alias gp='git pull'
alias gpsh='git push'
alias gm='git commit'
alias pb="curl -w '\n' -q -L --data-binary @- -o - https://pb.koalathe.dev/"

zstyle ':bracketed-paste-magic' active-widgets '.self-*'

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

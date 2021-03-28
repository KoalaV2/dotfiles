# Path to your oh-my-zsh installation.
export ZSH="/home/theo/.oh-my-zsh"
export ZSH_CUSTOM="/home/koala/.zsh"
ZSH_THEME="robbyrussell"
## ZSH autosuggestions
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ENABLE_CORRECTION="true"
HIST_STAMPS="yyyy-mm-dd"
plugins=(git colorize pip sudo)
source $ZSH/oh-my-zsh.sh

# Example aliases
alias ls='exa --icons --color=auto --group-directories-first'
alias cat='bat'
alias open='xdg-open'
alias vim='nvim'
alias wttr='curl https://wttr.in/\~Soedertalje\?0m'
alias rsync='rsync -v --progress'
alias vpnc='sudo wg-quick up homelab'
alias vpnd='sudo wg-quick down homelab'
alias gp='git pull'
alias pb="curl -w '\n' -q -L --data-binary @- -o - https://pb.koalathe.dev/"

zstyle ':bracketed-paste-magic' active-widgets '.self-*'

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

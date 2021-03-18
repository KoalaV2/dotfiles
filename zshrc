# Path to your oh-my-zsh installation.
export ZSH="/home/theo/.oh-my-zsh"
export ZSH_CUSTOM="/home/koala/.zsh"
ZSH_THEME="robbyrussell"

# ZSH autosuggestions
ZSH_AUTOSUGGEST_STRATEGY=(history)
ENABLE_CORRECTION="true"
HIST_STAMPS="yyyy-mm-dd"
plugins=(git colorize pip sudo)

source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8

# Example aliases
alias ls='exa --icons --color=auto --group-directories-first'
alias cat='bat'
alias open='xdg-open'
alias vim='nvim'
alias wttr='curl https://wttr.in/\~Soedertalje\?0m'
alias rsync='rsync -v --progress'

zstyle ':bracketed-paste-magic' active-widgets '.self-*'

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

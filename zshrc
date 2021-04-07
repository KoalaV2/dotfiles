# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZSH_AUTOSUGGEST_STRATEGY=(history)
ENABLE_CORRECTION="true"
HIST_STAMPS="yyyy-mm-dd"
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=2000

unsetopt beep
export LANG=en_US.UTF-8

autoload -Uz compinit
compinit -d ~/.cache/zcompdump
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' # case insensitive tab completion

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
alias gs='git status'
alias pb="curl -w '\n' -q -L --data-binary @- -o - https://pb.koalathe.dev/ | sed 's/192.168.68.131:8343/pb.koalathe.dev/g'"

zstyle ':bracketed-paste-magic' active-widgets '.self-*'

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

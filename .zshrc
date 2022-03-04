# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
#
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

ZSH_AUTOSUGGEST_STRATEGY=(history)
HIST_STAMPS="yyyy-mm-dd"
ENABLE_CORRECTION="true"
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=2000

unsetopt beep
autoload -Uz compinit
compinit -d ~/.cache/zcompdump
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' # case insensitive tab completion

alias ls='exa --icons --color=auto --group-directories-first'
alias cat='bat'
alias open='xdg-open'
alias vim='nvim'
alias wttr='curl https://wttr.in/\~Soedertalje\?0m'
alias rsync='rsync -v --progress -h --partial -t'
alias vpnc='nmcli c up homelab'
alias vpnd='nmcli c down homelab'
alias ga='git add'
alias gp='git pull'
alias gm='git commit'
alias gpsh='git push'
alias todo="grep -n TODO *"
alias ssh="TERM=xterm-256color ssh"

function disc() {
    local file="file=@$1"
    ffmpeg -i $1 -vf "scale=iw/2:ih/2" output.mp4
}
function upload() {
    ~/.webpass.sh
    output=$(curl -X POST -u koala:$PASSWD -F "file=@$1" http://130.162.53.121:7333/)
    echo "$output copied to clipboard."
    wl-copy $output
}

bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey '^R' history-incremental-search-backward
bindkey -v

zstyle ':bracketed-paste-magic' active-widgets '.self-*'

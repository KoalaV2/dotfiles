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
alias vpnc='nmcli c up homelab'
alias vpnd='nmcli c down homelab'
alias ga='git add'
alias gp='git pull'
alias gpsh='git push'
alias gm='git commit'
alias pb="curl -w '\n' -q -L --data-binary @- -o - https://pb.theolikes.tech/ | sed 's/192.168.68.131:8343/pb.theolikes.tech/g'"
alias todo="grep -n TODO *"
alias ssh="kitty +kitten ssh"


function upload() {
    local file="file=@$1"
    local password="$2"
    curl -u theo:$2 -F ${file} theolikes.tech:7331
}
function disc() {
    local file="file=@$1"
    ffmpeg -i $1 -vf "scale=iw/2:ih/2" output.mp4
}
function bg() {
    setsid -f $1 && exit
}
function pubip() {
    curl ipecho.net/plain
}
function upload() {
    ~/.webpass.sh
    output=$(curl -X POST -u theo:$PASSWD -F "file=@$1" http://46.101.119.69:7333/)
    echo "$output copied to clipboard."
    wl-copy $output
}
# Setup extract alias
function extract() {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1 ;;
      *.tar.gz)    tar xzf $1 ;;
      *.bz2)       bunzip2 $1 ;;
      *.rar)       rar x $1 ;;
      *.gz)        gunzip $1 ;;
      *.tar)       tar xvf $1 ;;
      *.tbz2)      tar xjf $1 ;;
      *.tgz)       tar xzf $1 ;;
      *.zip)       unzip $1 ;;
      *.Z)         uncompress $1 ;;
      *.7z)        7za x $1 ;;
      *.xz)        xz -d $1 ;;
      *)           echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey -v
bindkey '^R' history-incremental-search-backward

zstyle ':bracketed-paste-magic' active-widgets '.self-*'

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

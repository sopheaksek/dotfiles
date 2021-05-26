#source ~/.nvm/nvm.sh
#$nvm use stable
eval "$(/opt/homebrew/bin/brew shellenv)"
shopt -s autocd
shopt -s histappend

export PATH=$PATH:$HOME/bin
export TERM=xterm-256color
export HISTSIZE=5000
export HISTFILESIZE=10000

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

PS1='\[\e[0m\]\u\[\e[0m\]@\[\e[0m\]\H\[\e[0m\]:\[\e[0m\]:\[\e[m\] \[\e[0;32m\]\w\[\e[m\] \[\e[0m\]>\[\e0 '

fortune | cowsay -f tux

export PATH="/opt/local/bin:/opt/local/sbin:$PATH"


export PATH="/opt/homebrew/bin:$PATH"
#source ~/.nvm/nvm.sh
#$nvm use stable
if [[ `uname -m` == 'arm64' ]]; then
	eval "$(/opt/homebrew/bin/brew shellenv)"
fi
shopt -s autocd
shopt -s histappend

export PATH=$PATH:$HOME/bin
export TERM=xterm-256color export HISTSIZE=5000
export HISTFILESIZE=10000

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\033[1;32m\w \033[00m> "

fortune | cowsay -f tux

export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PATH="/Users/vtechone/platform-tools:$PATH"
export NVM_DIR=~/.nvm
export PATH="$PATH:~/.yarn/bin"
export PATH="/usr/local/opt/postgresql@13/bin:$PATH"

source $(brew --prefix nvm)/nvm.sh

#!/usr/bin/env bash

. "$( pwd )/utils.sh"

which brew 1>&/dev/null
if [ ! "$?" -eq 0 ] ; then
	echo_with_prompt "Homebrew not installed. Attempting to install Homebrew"
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	if [ ! "$?" -eq 0 ] ; then
		echo_with_prompt "Something went wrong. Exiting..." && exit 1
	fi
fi

brew update
brew upgrade
brew install coreutils
brew install node
brew install python
brew install go
brew install yarn
brew install htop
brew install tmux
brew install vim
brew install nvim
brew install gdb
brew install bash
brew tap homebrew/cask-fonts && brew install --cask font-fira-code
brew install fortune
brew install cowsay
brew cleanup

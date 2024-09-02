#!/bin/bash
. "$( pwd )/utils.sh"
PROMPT='[ Bootstrap ]'

source .exports

init () {
	echo_with_prompt "Making a Projects folder in $PATH_TO_PROJECTS if it doesn't already exist"
	mkdir -p "$PATH_TO_PROJECTS"
	echo_with_prompt "Making a Playground folder in $PATH_TO_PLAYGROUND if it doesn't already exist"
	mkdir -p "$PATH_TO_PROJECTS"
}

install_tools () {
	echo_with_prompt "Execute utilities installation with Homebrew..."
	echo_with_prompt "Proceed? (y/n)"
	read resp
	if [ "$resp" = 'y' -o "$resp" = 'Y' ]; then
		echo_with_prompt "Installing useful program using brew. This may take awile..."
		sh brew.sh
	else
		echo_with_prompt "Brew installation cancelled by user"
	fi
}

init
install_tools

ln -sv "$PWD/.bash_profile" "$HOME" || true
ln -sfnv "$PWD/.tmux.conf" "$HOME/.config/tmux/tmux.conf" || true
ln -sfnv "$PWD/.config/nvim" "$HOME/.config/nvim" || true

true

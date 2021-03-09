* Install Xcode
* xcode-select --install
* port install bash
* add /bin/bash to top of /etc/shells
* chsh
* port install vim
* port install tmux
* ./setup.sh
* git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
* curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
* vim then :PlugInstall
* tmux source ~/.tmux.conf
* tmux then ctrl&j + I

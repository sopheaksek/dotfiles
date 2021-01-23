## vim/ ##
1. copy .vimrc to ~/.vimrc

2. run this
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
3. start vim
```
:PlugInstall
:source %
```

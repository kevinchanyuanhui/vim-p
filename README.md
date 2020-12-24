# vim-p

start using vim

## usage

- install vim-plug

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

- clone repo

```bash
git clone git@github.com:kevinchanyuanhui/vim-p.git
```

- apply setting

```bash
ln -s ~/dev/my/vim-p/.vimrc ~/.vimrc
```

- install plugin

```bash
vim 
:PlugInstall
```

- YCM install ts support

```bash
brew install cmake
cd ~/.vim/plugged/youcompleteme
python3 install.py --ts-completer
```
- ctags

```bash
brew install ctags-exuberant
cd ~/dev/my/xxx
ctags -R
```

## extra info

- [vimawesome](https://vimawesome.com/)

- [vim-plug](https://github.com/junegunn/vim-plug)

- [vim-web](https://github.com/jaywcjlove/vim-web)

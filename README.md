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

- install vim-prettier

```bash
cd  ~/.vim/plugged/vim-prettier
npm i
```

- YCM install ts support

```bash
brew install cmake
cd ~/.vim/plugged/youcompleteme
python3 install.py --ts-completer --tern-completer
```

- ctags

```bash
brew install ctags-exuberant
# jsctags
~/.vim/plugged/jsctags
npm i
npm link
ln -s ~/dev/my/vim-p/.tern-config ~/.tern-config
```

## keymap

- F5             :  toggle nerdtree

- F6             :  toggle tagbar

- Ctrl + p       :  search

- , + p          :  prettier

- Ctrl + ]       :  jump ctags

- :Tabularize /= :  tab

- cs"'           :  vim-surround

- Ctrl + w + w   :  switch window

## extra info

- [vimawesome](https://vimawesome.com/)

- [vim-plug](https://github.com/junegunn/vim-plug)

- [vim-web](https://github.com/jaywcjlove/vim-web)

- [vim-ide](https://www.jianshu.com/p/06ea892566e7)

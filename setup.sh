#!/bin/bash

# Check if folders need creating on new profile
if [ ! -d ~/.vim ];
        then mkdir ~/.vim;
fi

if [ ! -d ~/.vim/colors ];
        then mkdir ~/.vim/colors;
fi

if [ ! -d ~/.vim/ftplugin ];
        then mkdir ~/.vim/ftplugin;
fi

# GIT clone stuff
git clone https://github.com/sludge3000/dot-files
git clone https://github.com/AlessandroYorba/Alduin
git clone https://github.com/junegunn/seoul256.vim
git clone https://github.com/nanotech/jellybeans.vim

# Copy dot-files to HOME_DIR
cp dot-files/.vimrc ~/.vimrc
cp dot-files/.tmux.conf ~/.tmux.conf
cp dot-files/.bashrc ~/.bashrc
cp dot-files/.bash_aliases ~/.bash_aliases
cp dot-files/.profile ~/.profile
cp -r dot-files/.vim ~/.vim

# Copy VIM color schemes to correct location
cp Alduin/colors/alduin.vim ~/.vim/colors/alduin.vim
cp seoul256.vim/colors/seoul256.vim ~/.vim/colors/seoul256.vim
cp jellybeans.vim/colors/jellybeans.vim ~/.vim/colors/jellybeans.vim

# Tidy up
rm -rf dot-files
rm -rf Alduin
rm -rf seoul256.vim
rm -rf jellybeans.vim

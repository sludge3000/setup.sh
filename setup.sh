#!/bin/bash

# Check if folders need creating on new profile
if [ ! -d ~/.vim ];
        then mkdir ~/.vim;
fi

if [ ! -d ~/.vim/colors ];
        then mkdir ~/.vim/colors;
fi

# GIT clone stuff
git clone https://github.com/sludge3000/dot-files
git clone https://github.com/AlessandroYorba/Alduin
git clone https://github.com/junegunn/seoul256.vim
git clone https://github.com/nanotech/jellybeans.vim

# Check if already in $HOME and move stuff
DIRECTORY=$(cd `dirname $0` && pwd)
if [ $DIRECTORY != $HOME ];
        then
        # Copy dot-files to HOME_DIR
        cp dot-files/.vimrc ~/.vimrc
        cp dot-files/.tmux.conf ~/.tmux.conf
        cp dot-files/.bashrc ~/.bashrc
        cp dot-files/.bash_aliases ~/.bash_aliases
        cp -r dot-files/.git ~/.git
fi

# Copy VIM color schemes to correct location
cp Alduin/colors/alduin.vim ~/.vim/colors/alduin.vim
cp seoul256/colors/seoul256.cim ~/.vim/colors/seoul256.vim
cp jellybeans/colors/jellybeans.vim ~/.vim/colors/jellybeans.vim

# Tidy up
rm -r dot-files
rm -r Alduin
rm -r seoul256
rm -r jellybeans

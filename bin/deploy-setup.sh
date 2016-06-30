#!/bin/bash

# Takes all setup files from project and deploys them to system

BIN_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DIR=`dirname $BIN_DIR`
ATOM_DIR=$DIR/atom
HOME_DIR=$DIR/home


if [ ! -e ~/.atom ]; then
    mkdir ~/.atom
fi

cp $ATOM_DIR/*.{cson,coffee,less} ~/.atom
# APM install all atom packages
 apm install --packages-file $ATOM_DIR/atom-pkg.txt

# Shell (bash/zsh) files
cp $HOME_DIR/.profile ~
cp $HOME_DIR/.zprofile ~/.zprofile
cp $HOME_DIR/.zshrc ~/.zshrc
cp $HOME_DIR/.bashrc ~/.bashrc

# Tmux config
cp $HOME_DIR/.tmux.conf ~/.tmux.conf

# Vim
cp $HOME_DIR/.vimrc ~/.

# hgrc
cp $HOME_DIR/.hgrc ~

# Set up vundle for vim
if [ ! -e ~/.vim ]; then
    mkdir ~/.vim
    mkdir ~/.vim/bundle
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

# Install all vim packages
vim +PluginInstall +qall

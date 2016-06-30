#!/bin/bash

#This script copies some of the files on your current system to this project

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ATOM_DIR=$DIR/atom
HOME=$DIR/home

# Atom config
apm list --installed --bare > $ATOM_DIR/atom-pkg.txt
cp ~/.atom/*.{cson,coffee,less} $ATOM_DIR


# Shell (bash/zsh) files
cp ~/.profile $HOME
cp ~/.zprofile $HOME
cp ~/.zshrc $HOME
cp ~/.bashrc $HOME

# Tmux config
cp ~/.tmux.conf $HOME

# Vim
cp ~/.vimrc $HOME

# hgrc
cp ~/.hgrc $HOME


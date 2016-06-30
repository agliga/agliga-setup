#!/bin/bash

#This script copies some of the files on your current system to this project

BIN_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DIR=`dirname $BIN_DIR`
ATOM_DIR=$DIR/atom
HOME_DIR=$DIR/home

# Atom config
apm list --installed --bare > $ATOM_DIR/atom-pkg.txt
cp ~/.atom/*.{cson,coffee,less} $ATOM_DIR


# Shell (bash/zsh) files
cp ~/.profile $HOME_DIR
cp ~/.zprofile $HOME_DIR
cp ~/.zshrc $HOME_DIR
cp ~/.bashrc $HOME_DIR

# Tmux config
cp ~/.tmux.conf $HOME_DIR

# Vim
cp ~/.vimrc $HOME_DIR

# hgrc
cp ~/.hgrc $HOME_DIR

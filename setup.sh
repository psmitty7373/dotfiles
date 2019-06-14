#!/bin/sh

PWD=$(pwd)
DIR=$(dirname "$0")

rm ~/.vimrc
ln -s $PWD/$DIR/vimrc ~/.vimrc
rm ~/.bashrc
ln -s $PWD/$DIR/bashrc ~/.bashrc
rm ~/.zshrc
ln -s $PWD/$DIR/zshrc ~/.zshrc

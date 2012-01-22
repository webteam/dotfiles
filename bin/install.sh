#!/bin/bash


SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd )";

# Install vim config
echo " * Symlinking vim config..."
ln -s $SCRIPT_DIR/../vimrc ~/.vimrc
ln -s $SCRIPT_DIR/../vim ~/.vim

#!/usr/bin/env bash

sudo cp $PWD/wsl.conf /etc/
ln -s $PWD/.bash_aliases $HOME/.bash_aliases
ln -s $PWD/.gitconfig $HOME/.gitconfig
ln -s $PWD/.gitignore_global $HOME/.gitignore_global

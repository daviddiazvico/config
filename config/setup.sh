#!/usr/bin/env bash

sudo cp wsl.conf /etc/
sudo cp .bash_aliases ~
sudo cp .gitconfig /mnt/c/Users/$USER/
sudo cp .gitignore_global /mnt/c/Users/$USER/
ln -s /mnt/c/Users/$USER/.docker ~/.docker
ln -s /mnt/c/Users/$USER/.gitconfig ~/.gitconfig
ln -s /mnt/c/Users/$USER/.gitignore_global ~/.gitignore_global
ln -s /mnt/c/Users/$USER/.ssh ~/.ssh
ln -s /mnt/c/Users/$USER/home ~/home
chmod -R go-rwx ~/.bash_aliases ~/.docker ~/.gitconfig ~/.gitignore_global ~/.ssh ~/home

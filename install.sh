#!/bin/bash

echo "Updating..."

sudo apt update

echo "Installing packages..."

sudo xargs -a packages/apt-packages.txt apt install -y

echo "Installing Python packages..."

pip3 install -r packages/pip-packages.txt

echo "Installing Node packages..."

cat packages/npm-packages.txt

echo "Copying configs..."

cp dotfiles/.zshrc ~/.zshrc
cp dotfiles/.p10k.zsh ~/.p10k.zsh

cp -r configs/* ~/.config/

cp -r wallpapers ~/Pictures/

cp -r fonts/* ~/.local/share/fonts/

fc-cache -fv

echo "Done!"

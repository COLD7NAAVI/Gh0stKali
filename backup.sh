#!/bin/bash

set -e

echo "[*] Creating GhostKali backup..."

mkdir -p configs dotfiles themes icons cursors local-share home wallpapers

#############################
# Dotfiles
#############################

cp ~/.zshrc dotfiles/ 2>/dev/null || true
cp ~/.p10k.zsh dotfiles/ 2>/dev/null || true
cp ~/.gitconfig dotfiles/ 2>/dev/null || true

#############################
# Configs
#############################

rm -rf configs/*

cp -r ~/.config/xfce4 configs/ 2>/dev/null || true
cp -r ~/.config/qterminal configs/ 2>/dev/null || true
cp -r ~/.config/fastfetch configs/ 2>/dev/null || true
cp -r ~/.config/cava configs/ 2>/dev/null || true
cp -r ~/.config/gtk-3.0 configs/ 2>/dev/null || true
cp -r ~/.config/gtk-4.0 configs/ 2>/dev/null || true
cp -r ~/.config/Thunar configs/ 2>/dev/null || true
cp -r ~/.config/autostart configs/ 2>/dev/null || true

#############################
# Themes
#############################

rm -rf themes/*
cp -r ~/.themes/* themes/ 2>/dev/null || true

#############################
# Icons
#############################

rm -rf icons/*
cp -r ~/.icons/* icons/ 2>/dev/null || true

#############################
# Local Share
#############################

mkdir -p local-share

rm -rf local-share/themes
rm -rf local-share/icons

cp -r ~/.local/share/themes local-share/ 2>/dev/null || true
cp -r ~/.local/share/icons local-share/ 2>/dev/null || true

#############################
# Wallpapers
#############################

rm -rf wallpapers/*

cp -r ~/Pictures/* wallpapers/ 2>/dev/null || true

#############################
# Packages
#############################

dpkg --get-selections | awk '{print $1}' > packages/apt-packages.txt

pip3 freeze > packages/pip-packages.txt 2>/dev/null || true

npm list -g --depth=0 > packages/npm-packages.txt 2>/dev/null || true

echo "[✓] Backup Complete."

#!/bin/bash

set -e

echo "[*] Restoring GhostKali..."

mkdir -p ~/.config

cp dotfiles/.zshrc ~/ 2>/dev/null || true
cp dotfiles/.p10k.zsh ~/ 2>/dev/null || true
cp dotfiles/.gitconfig ~/ 2>/dev/null || true

cp -r configs/* ~/.config/

mkdir -p ~/.themes
mkdir -p ~/.icons

cp -r themes/* ~/.themes/ 2>/dev/null || true
cp -r icons/* ~/.icons/ 2>/dev/null || true

mkdir -p ~/.local/share

cp -r local-share/themes ~/.local/share/ 2>/dev/null || true
cp -r local-share/icons ~/.local/share/ 2>/dev/null || true

mkdir -p ~/Pictures

cp -r wallpapers/* ~/Pictures/ 2>/dev/null || true

echo "[✓] Restore Complete."
echo "Logout/Login or reboot recommended."

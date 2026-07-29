#!/bin/bash

echo "[*] Updating GhostKali backup..."

mkdir -p configs

cp -r ~/.config/xfce4 configs/
cp -r ~/.config/cava configs/

cp ~/.zshrc dotfiles/

echo "[✓] Backup completed."

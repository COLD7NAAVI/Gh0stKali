#!/bin/bash

echo "[*] Installing JetBrains Mono Nerd Font..."

mkdir -p ~/.local/share/fonts

cd /tmp

wget -O JetBrainsMono.zip \
https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip

unzip -o JetBrainsMono.zip -d ~/.local/share/fonts

fc-cache -fv

rm JetBrainsMono.zip

echo "[✓] Fonts installed."

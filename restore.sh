#!/bin/bash

echo "[*] Restoring GhostKali configuration..."

mkdir -p ~/.config

cp -r configs/* ~/.config/
cp dotfiles/.zshrc ~/

echo "[✓] Configuration restored."

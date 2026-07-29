#!/bin/bash

dpkg --get-selections | awk '{print $1}' > packages/apt-packages.txt

pip3 freeze > packages/pip-packages.txt

npm list -g --depth=0 > packages/npm-packages.txt

code --list-extensions > packages/vscode-extensions.txt

cp ~/.zshrc dotfiles/
cp ~/.p10k.zsh dotfiles/

rm -rf configs/*
cp -r ~/.config/qterminal configs/
cp -r ~/.config/fastfetch configs/
cp -r ~/.config/btop configs/
cp -r ~/.config/cava configs/
cp -r ~/.config/xfce4 configs/

git add .

git commit -m "GhostKali Update"

git push

echo "Backup complete."

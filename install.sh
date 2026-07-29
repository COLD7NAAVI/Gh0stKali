#!/bin/bash

echo "====================================="
echo "      GhostKali Installer"
echo "====================================="

sudo apt update

echo "[*] Installing packages..."
xargs -a packages/apt-packages.txt sudo apt install -y

echo "[*] Installing Oh My Zsh..."
RUNZSH=no CHSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "[*] Installing Powerlevel10k..."
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \
${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo "[*] Installing Fonts..."
bash scripts/install_fonts.sh

echo "[*] Restoring configs..."
bash restore.sh

echo
echo "[✓] GhostKali installation completed."
echo "Reboot recommended."

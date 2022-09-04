#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname $0)"

echo "Setting up zsh..."

if [ -d ~/.oh-my-zsh ]; then
    echo "Oh My Zsh already installed"
else
    echo "Installing Oh My Zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

git -C ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k pull || \
  git clone https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k

git -C ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions pull || \
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git -C ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions pull || \
  git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions

git -C ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting pull || \
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

ln -snfv "${PWD}/.zshrc" ~/.zshrc
ln -snfv "${PWD}/.p10k.zsh" ~/.p10k.zsh

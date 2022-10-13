#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$0")"

if [ "$(uname -s)" == "Linux" ] && [ -x "$(command -v apt)" ]; then
  echo "Setting up Linux packages..."
  sudo apt update && sudo apt install -y software-properties-common
  sudo add-apt-repository ppa:neovim-ppa/stable -y
  sudo apt update && sudo apt install -y \
    autojump \
    fzf \
    git \
    gnupg \
    neovim \
    tig \
    zsh
  sudo chsh -s "$(command -v zsh)" "$(whoami)"
fi

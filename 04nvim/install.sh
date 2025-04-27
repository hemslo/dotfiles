#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$0")"

echo "Setting up nvim..."

git -C ~/.config/nvim pull || \
  git clone https://github.com/NvChad/starter ~/.config/nvim

ln -snfv "${PWD}/chadrc.lua" ~/.config/nvim/lua/chadrc.lua

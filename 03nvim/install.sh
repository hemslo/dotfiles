#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname $0)"

echo "Setting up nvim..."

git -C ~/.config/nvim pull || \
  git clone https://github.com/NvChad/NvChad ~/.config/nvim

mkdir -p ~/.config/nvim/lua/custom

ln -snfv "${PWD}/chadrc.lua" ~/.config/nvim/lua/custom/chadrc.lua

#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$0")"

echo "Setting up git..."

ln -snfv "${PWD}/.gitconfig" ~/.gitconfig
ln -snfv "${PWD}/.gitignore_global" ~/.gitignore_global
ln -snfv "${PWD}/.gitmessage.txt" ~/.gitmessage.txt

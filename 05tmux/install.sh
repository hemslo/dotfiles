#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$0")"

echo "Setting up tmux"

ln -snfv "${PWD}/.tmux.conf" ~/.tmux.conf

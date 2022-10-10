#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$0")"

echo "Setting up cilium devvmrc..."

mkdir -p ~/go/src/github.com/cilium/cilium

ln -snfv "${PWD}/.devvmrc" ~/go/src/github.com/cilium/cilium/.devvmrc

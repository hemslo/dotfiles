#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname $0)"

if [ "$(uname -s)" == "Darwin" ]
then
    echo "Setting up Homebrew..."
    sudo -v
    NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    brew bundle install
fi

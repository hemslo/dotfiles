#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname $0)"

echo "Setting up..."

find . -name install.sh | sort | while read -r install_script; do
    echo "Running ${install_script}..."
    sh -c "${install_script}"
done

echo "Done!"

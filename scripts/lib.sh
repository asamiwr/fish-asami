#!/usr/bin/env bash

set -euo pipefail

readonly FISH_REPO="https://github.com/fish-shell/fish.git"
readonly DEST="$HOME/.config/fish/completions"

info() {
    printf "\033[1;36m󰋼\033[0m %s\n" "$*"
}

success() {
    printf "\033[1;32m✓\033[0m %s\n" "$*"
}

warn() {
    printf "\033[1;33m⚠\033[0m %s\n" "$*"
}

error() {
    printf "\033[1;31m✗\033[0m %s\n" "$*"
}

has() {
    command -v "$1" >/dev/null 2>&1
}

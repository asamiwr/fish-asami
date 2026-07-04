#!/usr/bin/env bash

set -euo pipefail

source "$(dirname "$0")/lib.sh"

mkdir -p "$DEST"

generate() {

    local program="$1"
    local command="$2"

    if has "$program"
    then
        info "Generating $program"

        eval "$command" \
            > "$DEST/$program.fish" \
            2>/dev/null || true
    fi
}

generate rustup "rustup completions fish"

generate atuin "atuin gen-completions --shell fish"

generate uv "uv generate-shell-completion fish"

generate mise "mise completion fish"

generate just "just --completions fish"

success "Generated dynamic completions."

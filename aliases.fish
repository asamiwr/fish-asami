# ===== Aliases =====

# Modern CLI
alias ls='lsd'
alias ll='lsd -lh --group-dirs first'
alias la='lsd -lah --group-dirs first'
alias lt='lsd --tree'

alias cat='bat'
alias grep='rg'
alias find='fd'
alias du='dust'

# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Git
alias g='git'
alias gs='git status'
alias gaa='git add .'
alias gc='git commit'
alias gcm='git commit -m'
alias gp='git push'
alias gl='git pull'
alias gd='git diff'
alias gb='git branch'
alias gco='git checkout'
alias gsw='git switch'

# Rust
alias c='cargo'
alias cb='cargo build'
alias cr='cargo run'
alias ct='cargo test'
alias cc='cargo check'
alias cf='cargo fmt'
alias cl='cargo clippy'

# Docker
alias d='docker'
alias dc='docker compose'

# System
alias cls='clear'
alias reload='source ~/.config/fish/config.fish'
alias fishconfig='nvim ~/.config/fish/config.fish'

# ===== Prompt =====

# fish_prompt is defined in:
# ~/.config/fish/functions/fish_prompt.fish

# ===== Aliases =====

# Modern CLI
if type -q lsd
    alias ls='lsd'
    alias ll='lsd -lh --group-dirs first'
    alias la='lsd -lah --group-dirs first'
    alias lt='lsd --tree'
else
    alias ls='command ls'
    alias ll='command ls -lh'
    alias la='command ls -lah'
    if type -q tree
        alias lt='command tree'
    else
        alias lt='command ls'
    end
end

if type -q bat
    alias cat='bat'
else
    alias cat='command cat'
end
# alias grep='rg'
if type -q fd
    alias find='fd'
else
    alias find='command find'
end
if type -q dust
    alias du='dust'
else
    alias du='command du'
end

# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Git
if type -q git
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
end

# Rust
if type -q cargo
    alias c='cargo'
    alias cb='cargo build'
    alias cr='cargo run'
    alias ct='cargo test'
    alias cc='cargo check'
    alias cf='cargo fmt'
    alias cl='cargo clippy'
end

# Docker
if type -q docker
    alias d='docker'
    if docker compose version >/dev/null 2>&1
        alias dc='docker compose'
    end
end

# System
alias cls='clear'
alias reload='source ~/.config/fish/config.fish'
if type -q nvim
    alias fishconfig='nvim ~/.config/fish/config.fish'
else if type -q vim
    alias fishconfig='vim ~/.config/fish/config.fish'
else if type -q vi
    alias fishconfig='vi ~/.config/fish/config.fish'
end

# ===== Prompt =====

# fish_prompt is defined in:
# ~/.config/fish/functions/fish_prompt.fish

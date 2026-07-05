if test -f "$HOME/.cargo/env.fish"
    source "$HOME/.cargo/env.fish"
else if type -q rustup
    fish_add_path "$HOME/.cargo/bin"
end

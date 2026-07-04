# ===== Homebrew =====

# Initialize Homebrew
if test -x /home/linuxbrew/.linuxbrew/bin/brew
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv fish)"

    # Homebrew completions
    set -l brew_prefix (brew --prefix)

    if test -d "$brew_prefix/share/fish/completions"
        set -p fish_complete_path "$brew_prefix/share/fish/completions"
    end

    if test -d "$brew_prefix/share/fish/vendor_completions.d"
        set -p fish_complete_path "$brew_prefix/share/fish/vendor_completions.d"
    end
end

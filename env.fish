# ===== Environment =====

set fish_greeting

if type -q nvim
    set -gx EDITOR nvim
    set -gx VISUAL nvim
    set -gx MANPAGER "nvim +Man!"
else if type -q vim
    set -gx EDITOR vim
    set -gx VISUAL vim
    if type -q less
        set -gx MANPAGER less
    else
        set -e MANPAGER
    end
else if type -q vi
    set -gx EDITOR vi
    set -gx VISUAL vi
    if type -q less
        set -gx MANPAGER less
    else
        set -e MANPAGER
    end
else
    set -e EDITOR VISUAL MANPAGER
end

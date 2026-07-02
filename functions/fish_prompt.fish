# Meow Meow AmirHossein
# SAY MEOW YOU LITTLE PENGUIN !

function __project_icon
    if test -f Cargo.toml
        echo ""
    else if test -f go.mod
        echo ""
    else if test -f pyproject.toml
        echo ""
    else if test -f manage.py
        echo ""
    else if test -f requirements.txt
        echo ""
    else if test -f package.json
        echo ""
    else if test -f deno.json
        echo ""
    else if test -f composer.json
        echo ""
    else if test -f CMakeLists.txt
        echo ""
    else if test -f Makefile
        echo ""
    end
end

function __git_branch
    command git rev-parse --is-inside-work-tree >/dev/null 2>&1; or return
    command git branch --show-current 2>/dev/null
end

function fish_prompt
    set -l last_status $status

    # user@host
    set_color cyan
    printf "%s" (whoami)


    set_color normal
    printf "@"

    set_color cyan
    printf "%s" (hostname -s)

    # path
    set_color blue
    printf " %s" (prompt_pwd)

    # git
    set -l branch (__git_branch)
    if test -n "$branch"
        set_color magenta
        printf " 󰊢 %s" $branch
    end

    # language
    set -l icon (__project_icon)
    if test -n "$icon"
        set_color yellow
        printf " %s" $icon
    end

    # clock
    set_color brblack
    printf " 󰥔 %s" (date "+%H:%M")

    # prompt symbol
    if test $last_status -eq 0
        set_color cyan
    else
        set_color red
    end

    printf "   "

    set_color normal
end

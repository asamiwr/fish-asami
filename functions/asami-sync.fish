function asami-sync
    set -l script ~/.config/fish/scripts/asami-sync-completions.fish

    if test -f $script
        fish $script
    else
        echo "❌ sync script not found: $script"
        return 1
    end
end

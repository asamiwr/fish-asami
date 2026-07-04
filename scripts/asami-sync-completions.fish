#!/usr/bin/env fish

# =====================================
# fish-asami smart completion sync (FIXED)
# =====================================

set -l tmp /tmp/fish-shell
set -l target ~/.config/fish/completions
set -l source $tmp/share/completions

echo "󰋼 Cloning Fish repository..."

rm -rf $tmp
git clone --depth=1 https://github.com/fish-shell/fish-shell.git $tmp

mkdir -p $target

echo "󰄬 Syncing safe completions..."

# =====================================
# safe install logic
# =====================================

for file in $source/*.fish

    set -l name (basename $file)
    set -l cmd (string replace '.fish' '' $name)

    # -----------------------------
    # 1. skip internal fish helpers
    # -----------------------------
    if string match -qr "^__fish" $name
        continue
    end

    # -----------------------------
    # 2. skip known problematic files
    # -----------------------------
    if string match -qr "sudo|cd|fg|bg|kill" $name
        continue
    end

    # -----------------------------
    # 3. only install if command exists
    # -----------------------------
    if not command -v $cmd >/dev/null 2>&1
        continue
    end

    # -----------------------------
    # 4. install
    # -----------------------------
    cp -f $file $target/$name
    echo "✓ installed $name"

end

rm -rf $tmp

echo "󰄬 Done. Safe completions synced."

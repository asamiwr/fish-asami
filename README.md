# 🐟 fish-asami

A minimal, fast and smart Fish shell configuration with automatic completion management and clean modular design.

---

## ✨ Features

- Minimal custom Fish prompt
- Git branch indicator
- Project detection in prompt
- Time-aware prompt
- Vim-style keybindings
- PATH management
- FZF integration
- Zoxide integration
- Smart completion system (auto-detect installed commands)
- One-command sync system (`asami-sync`)
- Safe completion filtering to avoid runtime errors


## 🚀 Installation

Clone the repository:

git clone https://github.com/asamiwr/fish-asami.git

Copy configuration to Fish config directory:

cp -r fish-asami/* ~/.config/fish/

Reload Fish:

exec fish

---

## 🔄 Smart Completion System

This configuration includes an automatic completion manager.

It works like this:

- Clones official Fish completion sources
- Detects installed commands on your system
- Installs only relevant completions
- Skips internal or unsafe completions
- Prevents runtime-breaking files like sudo completion issues

---

## ⚡ Usage

Run the sync command:

asami-sync

This will:

- Fetch Fish completion sources
- Filter based on installed commands
- Install only safe completions
- Keep your system clean and fast

---

## 🧠 asami-sync command

Location:

~/.config/fish/functions/asami-sync.fish

Implementation:

function asami-sync
    set -l script ~/.config/fish/scripts/auto-sync-completions.fish

    if test -f $script
        fish $script
    else
        echo "sync script not found"
    end
end

---

## 📦 Requirements

Required:
- fish shell
- git

Optional (recommended):
- fzf
- zoxide
- bat
- ripgrep
- fd

---

## 📸 Preview

assets/preview.png

---

## 🧠 Philosophy

- Minimal but powerful
- No unnecessary plugins
- System-aware configuration
- Smart automation instead of manual setup
- Fast startup time

---

## 📄 License

MIT License

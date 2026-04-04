#!/bin/bash
# symlink dotfiles

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

files=(".bashrc" ".vimrc" ".tmux.conf" ".config/kitty/kitty.conf")

for file in "${files[@]}"; do
    target="$HOME/$file"
    source="$DOTFILES_DIR/$file"
    
    if [ -f "$source" ]; then
        mkdir -p "$(dirname "$target")"
        
        if [ -f "$target" ] || [ -L "$target" ]; then
            mv "$target" "${target}.bak"
            echo "[*] backed up $target"
        fi
        
        ln -sf "$source" "$target"
        echo "[+] linked $file"
    fi
done

echo "[+] done"

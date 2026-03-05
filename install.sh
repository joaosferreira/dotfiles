#!/bin/bash
DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Ensure ~/.config exists
mkdir -p "$HOME/.config"

# Symlink configs
ln -sf "$DOTFILES/.zshrc" "$HOME/.zshrc"
ln -sf "$DOTFILES/.config/nvim" "$HOME/.config/nvim"
ln -sf "$DOTFILES/.config/ghostty" "$HOME/.config/ghostty"

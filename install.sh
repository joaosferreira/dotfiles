#!/bin/bash
set -e  # Exit on error

DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BACKUP_SUFFIX=".backup.$(date +%Y-%m-%d-%H%M%S)"

# Function to safely create symlink with backup
backup_and_link() {
    local source="$1"
    local target="$2"
    local target_name="$(basename "$target")"
    
    # Check if target already points to the correct location
    if [ -L "$target" ] && [ "$(readlink "$target")" = "$source" ]; then
        echo "✓ $target_name already correctly linked"
        return 0
    fi
    
    # Backup existing target if it exists
    if [ -e "$target" ] || [ -L "$target" ]; then
        local backup="${target}${BACKUP_SUFFIX}"
        echo "📦 Backing up existing $target_name to $(basename "$backup")"
        mv "$target" "$backup"
    fi
    
    # Create symlink
    echo "🔗 Linking $target_name"
    ln -s "$source" "$target"
}

echo "Installing dotfiles from $DOTFILES"
echo ""

# Ensure ~/.config exists
mkdir -p "$HOME/.config"

# Symlink configs
backup_and_link "$DOTFILES/.zshrc" "$HOME/.zshrc"
backup_and_link "$DOTFILES/.config/nvim" "$HOME/.config/nvim"
backup_and_link "$DOTFILES/.config/ghostty" "$HOME/.config/ghostty"

echo ""
echo "✨ Installation complete!"

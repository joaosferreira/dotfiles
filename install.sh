#!/bin/bash
set -e  # Exit on error
set -o pipefail

DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BACKUP_SUFFIX=".backup.$(date +%Y-%m-%d-%H%M%S)"

check_dependency() {
    if ! command -v "$1" &>/dev/null; then
        echo "⚠️  $1 is not installed"
    fi
}

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

check_dependency nvim
check_dependency ghostty

# Ensure ~/.config exists
mkdir -p "$HOME/.config"

# Symlink configs
backup_and_link "$DOTFILES/.zshrc" "$HOME/.zshrc"
backup_and_link "$DOTFILES/.config/nvim" "$HOME/.config/nvim"
backup_and_link "$DOTFILES/.config/ghostty" "$HOME/.config/ghostty"

echo ""
echo "✨ Installation complete!"
echo ""
echo "Restart your terminal"

# dotfiles

Personal dotfiles for terminal based development on macOS.

## Prerequisites

- [Neovim](https://neovim.io/)
- [Ghostty](https://ghostty.org/)
- Git

## Installation

```bash
$ git clone https://github.com/joaosferreira/dotfiles.git && cd dotfiles

$ ./install.sh
```

The install script creates symlinks for:

- `~/.zshrc` - Zsh configuration
- `~/.config/nvim/` - Neovim configuration
- `~/.config/ghostty/` - Ghostty terminal configuration

Existing files are backed up in place.

## Post-Install

1. Restart your terminal or run `source ~/.zshrc`
2. Open Neovim - plugins will auto-install on first launch

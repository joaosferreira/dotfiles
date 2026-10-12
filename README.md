# dotfiles

Personal dotfiles for terminal based development on macOS.

## Prerequisites

- [Neovim](https://neovim.io/) 0.11+
- [Ghostty](https://ghostty.org/) 1.2+
- Git

## Installation

Clone the repository and run the install script:

```bash
$ ./install.sh
```

The install script creates symlinks for:

- `~/.zshrc`
- `~/.config/nvim/`
- `~/.config/ghostty/`

Existing files are backed up in place.

After installing:

1. Restart your terminal.
2. Open Neovim; plugins will auto-install on first launch.

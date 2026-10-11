# Neovim

Minimal Lua-based Neovim setup with [lazy.nvim](https://github.com/folke/lazy.nvim).

## What's included

| Feature | Plugin | Description |
| --- | --- | --- |
| Theme | tokyonight.nvim | Applies the Tokyo Night (Moon) colorscheme, matching the Ghostty theme. |
| Syntax Highlighting | nvim-treesitter | Installs tree-sitter parsers and enables highlighting for supported languages. |

## Layout

```text
.nvim/
├── init.lua       Entry point
├── lazy-lock.json Pinned plugin versions
└── lua/
    ├── config/    Editor options, keymaps, and plugin-manager bootstrap
    └── plugins/   One file per plugin
```

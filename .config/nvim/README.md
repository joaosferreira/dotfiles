# Neovim

Lua-based Neovim configuration for terminal-based development.

## What's included

### Plugins

Plugins are managed with [lazy.nvim](https://github.com/folke/lazy.nvim).

| Feature | Plugin | Description |
| --- | --- | --- |
| Theme | tokyonight.nvim | Applies the Tokyo Night (Moon) colorscheme, matching the Ghostty theme. |
| Syntax Highlighting | nvim-treesitter | Installs tree-sitter parsers and enables highlighting for supported languages. |
| Fuzzy Finder | telescope.nvim | Finds files and searches their contents. |
| Formatting | conform.nvim | Formats supported filetypes on save. |

### Language Servers

Language servers are configured through Neovim's built-in `vim.lsp`.

| Language | Server |
| --- | --- |
| Lua | `lua-language-server` (`lua_ls`) |

## Layout

```text
.config/nvim/
├── init.lua       Entry point
├── lazy-lock.json Pinned plugin versions
└── lua/
    ├── config/    Editor options, keymaps, and plugin-manager bootstrap
    └── plugins/   One file per plugin
```

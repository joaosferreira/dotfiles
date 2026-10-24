local opt = vim.opt

-- Leader
vim.g.mapleader = " "

-- Line numbers
opt.number = true
opt.relativenumber = true

-- Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true

-- UI
opt.termguicolors = true
opt.signcolumn = "yes"
opt.cursorline = true
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.wrap = false
opt.splitright = true
opt.splitbelow = true

-- Save Changes
opt.undofile = true
opt.swapfile = false
opt.backup = false

-- Timing
opt.updatetime = 300

-- Clipboard
opt.clipboard = "unnamedplus"

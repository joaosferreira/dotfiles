local telescope = require("telescope.builtin")

vim.keymap.set({ "n", "v" }, " ", "<Nop>", { silent = true })

-- Window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window", silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to lower window", silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to upper window", silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window", silent = true })

-- Buffer navigation
vim.keymap.set("n", "H", "<cmd>bprevious<cr>", { desc = "Previous buffer", silent = true })
vim.keymap.set("n", "L", "<cmd>bnext<cr>", { desc = "Next buffer", silent = true })

-- File operations
vim.keymap.set("n", "<leader>e", "<cmd>Ex<CR>", { desc = "Open file explorer", silent = true })
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file", silent = true })
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit window", silent = true })

-- Search
vim.keymap.set("n", "<leader>ff", telescope.find_files, { desc = "Find files", silent = true })
vim.keymap.set("n", "<leader>fg", telescope.live_grep, { desc = "Live grep", silent = true })
vim.keymap.set("n", "<leader>fb", telescope.buffers, { desc = "Find buffers", silent = true })
vim.keymap.set("n", "<leader>fh", telescope.help_tags, { desc = "Find help tags", silent = true })

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<cr>", { desc = "Clear search highlight", silent = true })

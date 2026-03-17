return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").install({ "lua", "vim", "vimdoc", "bash", "toml" })

    vim.api.nvim_create_autocmd("FileType", {
      pattern = "*",
      callback = function() vim.treesitter.start() end,
    })
  end,
}

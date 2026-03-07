return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").install({
      "lua",
      "vim",
      "vimdoc",
      "bash",
      "javascript",
      "css"
    })
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "*",
      callback = function() pcall(vim.treesitter.start) end,
    })
  end,
}

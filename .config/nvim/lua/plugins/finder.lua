return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    pickers = {
      find_files = {
        find_command = { "rg", "--files", "--hidden", "--glob", "!.git" },
      },
      live_grep = {
        additional_args = { "--hidden", "--glob", "!.git" },
      },
    },
  },
}

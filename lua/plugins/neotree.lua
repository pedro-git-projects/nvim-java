return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      follow_current_file = {
        enabled = true,
        leave_dirs_open = false,
      },
    })
  end,
  vim.cmd([[nnoremap <leader>w :Neotree reveal right<cr>]])
}

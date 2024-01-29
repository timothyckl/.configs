return  {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      window = {
        width = 30,
      }
    })

    vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>")
    vim.keymap.set("n", "<C-m>", ":Neotree close<CR>")

  end
}

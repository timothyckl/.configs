-- return {
--   {
--     "morhetz/gruvbox",
--     lazy = false,      -- load immediately
--     priority = 1000,   -- make sure it loads before other plugins
--     config = function()
--       vim.cmd("colorscheme gruvbox")
--     end,
--   },
-- }

return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha",
    })
    vim.cmd.colorscheme("catppuccin")
  end,
}

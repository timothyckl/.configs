-- lua/plugins/pydocstring.lua (or inside your lazy setup)
return {
  "heavenshell/vim-pydocstring",
  ft = "python",                 -- load only for Python files
  build = "make install",        -- installs `doq` for you (global)
  init = function()
    -- formatter: "google" | "numpy" | "sphinx"
    vim.g.pydocstring_formatter = "google"

    -- If you installed doq in a venv (step 1B), point to it:
    -- vim.g.pydocstring_doq_path = vim.fn.expand("~/.venvs/doq/bin/doq")

    -- Optional: disable default mapping and set your own
    vim.g.pydocstring_enable_mapping = 0
    vim.keymap.set("n", "<leader>dg", "<Plug>(pydocstring)", { silent = true })

    -- Recommended indent settings for correct formatting in Python buffers
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "python",
      callback = function()
        vim.opt_local.expandtab = true
        vim.opt_local.tabstop = 4
        vim.opt_local.shiftwidth = 4
        -- If you prefer softtabstop:
        -- vim.opt_local.softtabstop = 4
      end,
    })
  end,
}


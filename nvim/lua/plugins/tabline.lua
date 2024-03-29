return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
		"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
	},
	init = function()
		vim.g.barbar_auto_setup = false

		local map = vim.api.nvim_set_keymap
		local opts = { noremap = true, silent = true }

		-- Move to previous/next
		map("n", "<C-,>", "<Cmd>BufferPrevious<CR>", opts)
		map("n", "<C-.>", "<Cmd>BufferNext<CR>", opts)

		-- Re-order to previous/next
		map("n", "<C-<>", "<Cmd>BufferMovePrevious<CR>", opts)
		map("n", "<C->>", "<Cmd>BufferMoveNext<CR>", opts)

		-- Close buffer
		map("n", "<C-c>", "<Cmd>BufferClose<CR>", opts)
	end,
	opts = {
		-- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
		animation = false,
		-- insert_at_start = true,
		-- …etc.
	},
	version = "^1.0.0", -- optional: only update when a new 1.x version is released
}

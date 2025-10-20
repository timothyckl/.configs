return {
	"lervag/vimtex",
	lazy = false,
	init = function()
		vim.cmd("filetype plugin indent on")
		vim.cmd("syntax enable")

		vim.g.vimtex_view_method = "skim"
		vim.g.vimtex_compiler_method = "tectonic"
		vim.g.vimtex_quickfix_open_on_warning = 0
	end,
}

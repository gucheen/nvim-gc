return {
	"lukas-reineke/indent-blankline.nvim",
	event = "BufRead",
	init = function()
		vim.g.indent_blankline_show_current_context = false
	end,
}

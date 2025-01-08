return {
	{
		"projekt0n/github-nvim-theme",
		lazy = false,
		priority = 1000,
		config = function()
			require("github-theme").setup({})
			vim.opt.termguicolors = true
			vim.api.nvim_set_hl(0, "WinSeparator", { bg = "none" })
			vim.cmd("colorscheme github_dark_high_contrast")
		end,
	},
}

return {
	{
		"romgrk/barbar.nvim",
		dependencies = {
			"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
			"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
		},
		init = function()
			vim.g.barbar_auto_setup = false
			vim.keymap.set("n", "<leader>bt", function()
				if vim.o.showtabline == 2 then
					vim.o.showtabline = 0
				else
					vim.o.showtabline = 2
				end
			end, { noremap = true, silent = true, desc = "Toggle tabline" })
			vim.keymap.set("n", "<leader>bd", "<Cmd>BufferClose<CR>", { noremap = true, silent = true })
			vim.keymap.set("n", "<leader>bh", "<Cmd>BufferPrevious<CR>", { noremap = true, silent = true })
			vim.keymap.set("n", "<leader>bl", "<Cmd>BufferNext<CR>", { noremap = true, silent = true })
		end,
		config = function()
			require("barbar").setup()
			vim.o.showtabline = 0
		end,
		opts = {
			-- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
			auto_hide = 1,
			animation = false,
			-- insert_at_start = true,
			-- …etc.
		},
		version = "^1.0.0", -- optional: only update when a new 1.x version is released
	},
}

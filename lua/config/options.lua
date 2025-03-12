vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.autowrite = true
vim.opt.autoread = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.opt.timeoutlen = 2000
vim.opt.updatetime = 50

vim.opt.tags = ".tags"

-- Diagnostic display settings
vim.diagnostic.config({
	virtual_text = true, -- Show inline diagnostics
	signs = true, -- Show signs in the gutter
	underline = true, -- Underline problematic code
	update_in_insert = false,
	severity_sort = true,
})

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.showtabline = 0

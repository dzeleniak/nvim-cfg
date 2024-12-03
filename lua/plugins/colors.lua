return {
  {
    "projekt0n/github-nvim-theme",
    lazy = false,
    priority = 1000,
    config = function()
      require("github-theme").setup({})
      vim.opt.termguicolors = true
      vim.api.nvim_set_hl(0, "WinSeparator", { bg = "none" })

      local function set_light()
        vim.cmd("colorscheme github_light_high_contrast")
      end

      local function set_dark()
        vim.cmd("colorscheme github_dark_high_contrast")
      end

      set_dark()

      vim.keymap.set("n", "<leader>cl", set_light, { desc = "Light colors" })
      vim.keymap.set("n", "<leader>cd", set_dark, { desc = "Dark colors" })
    end,
  }
}

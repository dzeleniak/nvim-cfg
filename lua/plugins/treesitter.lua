return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        ensure_installed = {
          "c",
          "lua",
          "vim",
          "vimdoc",
          "query",
          "elixir",
          "javascript",
          "html",
          "ruby",
          "python",
        },
        sync_install = false,
        auto_install = true,
        ignore_install = {},
        modules = {
          "highlight",
          "incremental_selection",
          "indent",
          "rainbow",
        },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
  {
    -- Show delimiters in alternating colors
    "HiPhish/rainbow-delimiters.nvim",
  },
  {
    -- Show code context (fixing scope lines to the top)
    "nvim-treesitter/nvim-treesitter-context",
  },
}

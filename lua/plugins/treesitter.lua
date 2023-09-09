local opts = {
  highlight = { enable = true },
  indent = { enable = true },
  ensure_installed = {
    "html",
    "xml",
    "lua",
    "luadoc",
    "luap",
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<C-space>",
      node_incremental = "<C-space>",
      scope_incremental = false,
      node_decremental = "<bs>",
    },
  },
}

require("nvim-treesitter.configs").setup(opts)

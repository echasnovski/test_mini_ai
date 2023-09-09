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
}

require("nvim-treesitter.configs").setup(opts)

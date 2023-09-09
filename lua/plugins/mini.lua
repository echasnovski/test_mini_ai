local spec_treesitter = require("mini.ai").gen_spec.treesitter
require("mini.ai").setup({
  custom_textobjects = {
    t = spec_treesitter({ a = "@function.outer", i = "@function.inner" }),
  },
})

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
  spec = {
    { "folke/tokyonight.nvim" },
    {
      "nvim-treesitter/nvim-treesitter",
      version = false,
      build = ":TSUpdate",
      dependencies = {
        {
          "nvim-treesitter/nvim-treesitter-textobjects",
        },
      },
      config = function()
        require("plugins.treesitter")
      end,
    },
    {
      "echasnovski/mini.nvim",
      version = false,
      config = function()
        require("plugins.mini")
      end,
    },
  },
})
vim.cmd("colorscheme tokyonight")

vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

-- For VS Code
if vim.g.vscode then
  print "VSCODE MODE"

  require "vscode"
  require("lazy").setup {
    { import = "vsc.plugins" },
  }
  require "vsc.options"

  -- use system clipboard
  vim.opt.clipboard = "unnamedplus"

  vim.schedule(function()
    require "vsc.mappings"
  end)

-- for "Normal" Neovim
else
  local lazy_config = require "configs.lazy"

  -- load plugins
  require("lazy").setup({
    {
      "NvChad/NvChad",
      lazy = false,
      branch = "v2.5",
      import = "nvchad.plugins",
    },

    { import = "plugins" },
  }, lazy_config)

  -- load theme
  dofile(vim.g.base46_cache .. "defaults")
  dofile(vim.g.base46_cache .. "statusline")

  require "options"
  require "autocmds"

  vim.schedule(function()
    require "mappings"
  end)
end

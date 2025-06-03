require "nvchad.options"
require('neogit')
local null_ls = require('null-ls')
null_ls.setup({
sources = {
            null_ls.builtins.formatting.black,   -- Black
            null_ls.builtins.diagnostics.ruff,   -- Ruff
            null_ls.builtins.diagnostics.mypy,   -- MyPy
  }
})
-- add yours here!

local o = vim.o
o.cursorlineopt ='both' -- to enable cursorline!

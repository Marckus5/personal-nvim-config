require "nvchad.options"

require('refactoring').setup()

-- add yours here!

local o = vim.o
o.cursorlineopt ='both' -- to enable cursorline!

require('neogit')

local null_ls = require('null-ls')
null_ls.setup({
sources = {
            null_ls.builtins.diagnostics.ruff,   -- Ruff
            null_ls.builtins.diagnostics.mypy,   -- MyPy
    }
})

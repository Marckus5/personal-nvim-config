require "nvchad.options"

require("refactoring").setup()

-- TODO: add yours here!

require "todo-comments"
local o = vim.o
o.cursorlineopt = "both" -- to enable cursorline!

-- local null_ls = require "null-ls"
-- null_ls.setup {
--   sources = {
--     null_ls.builtins.diagnostics.ruff, -- Ruff
--     null_ls.builtins.diagnostics.mypy, -- MyPy
--   },
-- }

require("neogit").setup()

-- open all folds by default
vim.o.foldcolumn = '4' -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true
vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
require("ufo").setup {
  provider_selector = function(bufnr, filetype, buftype)
    return { "treesitter", "indent" }
  end,
}


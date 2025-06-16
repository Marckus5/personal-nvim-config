local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    python = { "black" },
    cpp = { "clang-format" },
    javascript = { { "prettierd" } },
    javascriptreact = { { "prettierd" } },
    markdown = { { "prettierd" } },
    typescript = { { "prettierd" } },
    typescriptreact = { { "prettierd" } },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
  formatters = {
    prettierd = {
      condition = function()
        return vim.loop.fs_realpath ".prettierrc.js" ~= nil or vim.loop.fs_realpath ".prettierrc.mjs" ~= nil
      end,
    },
  },
}

return options

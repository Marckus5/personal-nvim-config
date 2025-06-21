return {
  { "nvim-lua/plenary.nvim", vscode = true },
  {
    "nvchad/base46",
    build = function()
      require("base46").load_all_highlights()
    end,
  },
  {
    "folke/which-key.nvim",
    keys = { "<leader>", "<c-w>", '"', "'", "`", "c", "v", "g" },
    cmd = "WhichKey",
    opts = function()
      dofile(vim.g.base46_cache .. "whichkey")
      return {}
    end,
    vscode = true,
  },
}

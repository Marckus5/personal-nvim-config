local map = vim.keymap.set

local vscode = require "vscode"
-- /***********************/
--    Mappings from NVChad
-- /***********************/

-- map("n", "<C-h>", vscode.action(), { desc = "switch window left" })
-- map("n", "<C-l>", "<C-w> l", { desc = "switch window right" })
-- map("n", "<C-j>", "<C-w> j", { desc = "switch window down" })
-- map("n", "<C-k>", "<C-w> k", { desc = "switch window up" })

map("n", "<leader>n", "<cmd>set nu!<CR>", { desc = "toggle line number" })
map("n", "<leader>rn", "<cmd>set rnu!<CR>", { desc = "toggle relative number" })

-- global lsp mappings
map("n", "<leader>ds", vim.diagnostic.setloclist, { desc = "LSP diagnostic loclist" })

-- Comment
map("n", "<leader>/", "gcc", { desc = "toggle comment", remap = true })
map("v", "<leader>/", "gc", { desc = "toggle comment", remap = true })

-- additional mappings
map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")

map({ "n", "v" }, "<C-s>", "<cmd> w <cr>")

-- move a line of code up or down
map({"n", "v"}, "<A-j>", "<cmd>lua require('vscode').action('editor.action.moveLinesDownAction')<CR>", { desc = "Move code down" })
map({"n", "v"}, "<A-k>", "<cmd>lua require('vscode').action('editor.action.moveLinesUpAction')<CR>", { desc = "Move code up" })

-- close tab
-- map("n", "<leader>x", "<cmd>q <cr>", { desc = "Close Tab" })
-- format

map("n", "<tab>", "<cmd>lua require('vscode').action('workbench.action.nextEditorInGroup')<CR>")
map("n", "<S-tab>", "<cmd>lua require('vscode').action('workbench.action.previousEditorInGroup')<CR>")
-- general keymaps
map({"n", "v"}, "<leader>h", "<cmd>lua require('vscode').action('workbench.action.terminal.toggleTerminal')<CR>")
map({"n", "v"}, "<leader>fm", "<cmd>lua require('vscode').action('editor.action.formatDocument')<CR>")
map({"n", "v"}, "<leader>x", "<cmd>lua require('vscode').action('workbench.action.closeActiveEditor')<CR>")

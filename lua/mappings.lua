require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", "<Leader>gs", "<cmd> Neogit kind=floating <cr>", { desc = "Open git Status"})
map("n", "<Leader>gc", "<cmd> Neogit commit -a <cr>", { desc = "git Commit all modified"})

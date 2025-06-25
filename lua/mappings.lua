require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")

map({ "n", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", "<Leader>gs", "<cmd> Neogit kind=floating <cr>", { desc = "Open git Status"})
map("n", "<Leader>gc", "<cmd> Neogit commit -a <cr>", { desc = "git Commit all modified"})

-- move a line of code up or down
map({"n", "v"}, "<A-j>", "<cmd>m +1 <cr>", { desc = "Move code down" })
map({"n", "v"}, "<A-k>", "<cmd>m -2 <cr>", { desc = "Move code up" })

-- Lua
map("n", "<leader>mr", require("micropython_nvim").run)

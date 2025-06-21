local map = vim.keymap.set

-- /***********************/
--    Mappings from NVChad
-- /***********************/
-- dunno why these don't work
-- map("n", "<C-h>", "<C-w> h", { desc = "switch window left" })
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
map("n", "<A-j>", "<cmd>m +1 <cr>", { desc = "Move code down" })
map("n", "<A-k>", "<cmd>m -2 <cr>", { desc = "Move code up" })

-- close tab
-- map("n", "<leader>x", "<cmd>q <cr>", { desc = "Close Tab" })

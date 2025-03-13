-- bs

vim.g.mapleader = " "
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

-- Add file to Harpoon
vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

-- Navigate between files
vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-j>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-k>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<C-l>", function() ui.nav_file(4) end)
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set('n', '<leader>e', '<cmd>lua vim.diagnostic.open_float()<cr>', opts)

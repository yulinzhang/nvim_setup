-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
-- map("n", "<C-p>", "<cmd>lua Snacks.picker.explorer()<cr>", { desc = "Toggle File Explorer" })
map("n", "<C-p>", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle File Explorer" })
map("n", "gd", vim.lsp.buf.definition)
map("n", "gr", vim.lsp.buf.references)
map("n", "gn", vim.lsp.buf.rename)
map("n", "<C-h>", "<cmd>vertical resize -10<cr>", { desc = "shrink the panel size" })
map("n", "<C-l>", "<cmd>vertical resize +10<cr>", { desc = "increase the panel size" })
map("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "increase the panel size" })
map("n", "<S-l>", "<cmd>bnext<cr>", { desc = "increase the panel size" })

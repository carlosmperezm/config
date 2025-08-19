-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Press "jj" to go to nomal monde instead of pressing ESC every time
vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = false })

-- Exit and save nvim easily
-- vim.api.nvim_set_keymap("n", "<Leader>w", ":w<CR>", { noremap = false })
vim.api.nvim_set_keymap("n", "<Leader>q", ":q<CR>", { noremap = false })
vim.api.nvim_set_keymap("n", "<Leader>Q", ":q!<CR>", { noremap = false })

-- Scroll faster
vim.api.nvim_set_keymap("n", "<C-j>", "10<C-e>", { noremap = false })
vim.api.nvim_set_keymap("n", "<C-k>", "10<C-y>", { noremap = false })

-- Scroll off set to 0 lines
vim.opt.scrolloff = 0

-- Switch tabs
vim.api.nvim_set_keymap("n", "<Tab>", "<Leader>ww", { noremap = false })

-- Select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G")

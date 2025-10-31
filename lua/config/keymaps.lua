-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("i", "kj", "<Esc>", { desc = "Exit insert mode" })
map("i", "KJ", "<Esc>", { desc = "Exit insert mode" })

map("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
map("n", "<C-l", "<C-w>l", { desc = "Go to right window" })
map("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
map("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })

map("v", ">", ">gv", { desc = "Indent selection" })
map("v", "<", "<gv", { desc = "Dedent selection" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected line up" })
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected line down" })

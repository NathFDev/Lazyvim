-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local Util = require("lazyvim.util")

local map = Util.safe_keymap_set

-- go to beginning and end
map("i", "<C-b>", "<ESC>^i", { desc = "Beginning of line" })
map("i", "<C-e>", "<End>", { desc = "End of line" })

-- navigate within insert mode
map("i", "<C-h>", "<Left>", { desc = "Move left" })
map("i", "<C-l>", "<Right>", { desc = "Move right" })
map("i", "<C-j>", "<Down>", { desc = "Move down" })
map("i", "<C-k>", "<Up>", { desc = "Move up" })

-- Buffer Navigation
map("n", "<C-d>", "<C-d>zz", { desc = "Scroll down half a page and center the cursor" })
map("n", "<C-u>", "<C-u>zz", { desc = "Scroll up half a page and center the cursor" })
map("n", "n", "nzzzv", { desc = "Move to the next search result and center the cursor" })
map("n", "N", "Nzzzv", { desc = "Move to the previous search result and center the cursor" })
map("n", "<leader>x", ":bd<CR>", { desc = "Close buffer" })

-- Search and replace word under cursor
map(
  "n",
  "<leader>rp",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Search and replace word under cursor" }
)

-- Source current file
map("n", "<leader><leader>", ":so<CR>", { desc = "Source current file" })

-- Copy all
map("n", "<C-c>", "<cmd> %y+ <CR>", { desc = "Copy whole file" })

-- New buffer
map("n", "<leader>b", "<cmd> enew <CR>", { desc = "New buffer" })

-- Move the current line / block
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected lines down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected lines up" })

-- Indent
map("v", "<", "<gv", { desc = "Indent line" })
map("v", ">", ">gv", { desc = "Indent line" })

-- Yank to system clipboard
map("v", "<leader>y", '"+y', { desc = "Yank selection to system clipboard" })

-- Paste without yanking
map("x", "<leader>p", [["_dP]])

-- Delete without yanking
map({ "n", "v" }, "<leader>dx", [["_d]])

-- Escape
map("i", "<C-c>", "<Esc>")

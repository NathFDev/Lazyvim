local map = function(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- go to beginning and end
map("i", "<C-b>", "<ESC>^i", { desc = "Beginning of line" })
map("i", "<C-e>", "<End>", { desc = "End of line" })

-- navigate within insert mode
map("i", "<A-h>", "<Left>", { desc = "Move left" })
map("i", "<A-l>", "<Right>", { desc = "Move right" })
map("i", "<A-j>", "<Down>", { desc = "Move down" })
map("i", "<A-k>", "<Up>", { desc = "Move up" })

-- clear highlights
map("n", "<Esc>", "<cmd> noh <CR>", { desc = "Clear highlights" })

-- window management
map("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
map("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
map("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
map("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- Buffer Navigation
map("n", "<C-d>", "<C-d>zz", { desc = "Scroll down half a page and center the cursor" })
map("n", "<C-u>", "<C-u>zz", { desc = "Scroll up half a page and center the cursor" })
map("n", "n", "nzzzv", { desc = "Move to the next search result and center the cursor" })
map("n", "N", "Nzzzv", { desc = "Move to the previous search result and center the cursor" })

-- Search and replace word under cursor
map(
  "n",
  "<leader>rp",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Search and replace word under cursor" }
)

-- File action
map("n", "<C-c>", "<cmd> %y+ <CR>", { desc = "Copy whole file" })
map("n", "<C-a>", "ggVG", { desc = "Select whole file" })

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
map("n", "<leader>dx", [["_d]])
map("v", "<leader>dx", [["_d]])

-- Escape
map("i", "<C-c>", "<Esc>")

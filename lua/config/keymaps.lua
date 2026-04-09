-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")

-- Clear search highlight
vim.keymap.set("n", "<leader>nh", ":nohl<CR>")

-- Exit insert mode quickly
vim.keymap.set("i", "jk", "<ESC>")

-- List lsp clients
vim.keymap.set("n", "<leader>li", function()
  vim.print(vim.lsp.get_clients())
end, { desc = "LSP Info" })

-- Splits in horizontal/veritical buffers in vim
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", { desc = "Vertical split" })
vim.keymap.set("n", "<leader>sh", ":split<CR>", { desc = "Horizontal split" })

-- Faster shortcuts for saving/closing
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")

-- Seamless navigation (tmux + nvim)
vim.keymap.set("n", "<C-h>", "<cmd>TmuxNavigateLeft<CR>")
vim.keymap.set("n", "<C-l>", "<cmd>TmuxNavigateRight<CR>")
vim.keymap.set("n", "<C-j>", "<cmd>TmuxNavigateDown<CR>")
vim.keymap.set("n", "<C-k>", "<cmd>TmuxNavigateUp<CR>")

-- Compile C++
vim.keymap.set("n", "<leader>cc", function()
  vim.cmd("w")
  vim.cmd("!g++ -std=c++20 -O2 % -o %<")
end, { desc = "Compile C++" })

-- Run executable
vim.keymap.set("n", "<leader>cr", function()
  vim.cmd("!./%<")
end, { desc = "Run program" })

-- Compile + Run
vim.keymap.set("n", "<leader>cx", function()
  vim.cmd("w")
  vim.cmd("!g++ -std=c++20 -O2 % -o %< && ./%<")
end, { desc = "Compile & Run" })

-- Run with input.txt
vim.keymap.set("n", "<leader>ci", function()
  vim.cmd("w")
  vim.cmd("!g++ -std=c++20 -O2 % -o %< && ./%< < input.txt")
end, { desc = "Run with input" })

-- Git (gitsigns)
vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>")
vim.keymap.set("n", "<leader>gs", ":Gitsigns stage_hunk<CR>")
vim.keymap.set("n", "<leader>gr", ":Gitsigns reset_hunk<CR>")
vim.keymap.set("n", "<leader>gb", ":Gitsigns blame_line<CR>")
vim.keymap.set("n", "<leader>gn", ":Gitsigns next_hunk<CR>")
vim.keymap.set("n", "<leader>gN", ":Gitsigns prev_hunk<CR>")

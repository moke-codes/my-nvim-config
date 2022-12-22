
-- Open explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move highlighted text
vim.keymap.set("v", "j", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "k", ":m '<-2<CR>gv=gv")

-- move page up and down always centering
vim.keymap.set("n", "<c-d>", "<c-d>zz")
vim.keymap.set("n", "<c-u>", "<c-u>zz")

-- allow search terms to stay in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Allow to paste over another thing without replacing the buffer 
-- with what is being overwrited
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Allow to copy to clipboard using <leader>y
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- In visual vertical mode Ctrl+C does not work, only ESC
-- Little trick to make it work as ESC
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Disable commands I don't like
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "W", "<nop>")

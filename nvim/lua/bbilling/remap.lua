vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "r", "<C-r>")

-- Increment/decrement
vim.keymap.set('n', '+', '<C-a>')
vim.keymap.set('n', '-', '<C-x>')

-- Select all
vim.keymap.set('n', '<leader>a', 'gg<S-v>G')

-- Delete a word backwards
vim.keymap.set('n', 'dw', 'vb"_d')

-- New tab
vim.keymap.set('n', 'te', ':tabedit')
vim.keymap.set('n', 'tn', ':tabnew<CR>')
vim.keymap.set('n', 'tq', ':tabclose<CR>')
vim.keymap.set('n', 'tl', ':+tabnext<CR>')
vim.keymap.set('n', 'th', ':-tabnext<CR>')

-- Split window in vim
vim.keymap.set('n', 'ss', ':split<Return><C-w>w')
vim.keymap.set('n', 'sv', ':vsplit<Return><C-w>w')

-- Split window in tmux
vim.keymap.set('n', '<leader>h',':silent !tmux split-window -dh<CR>')
vim.keymap.set('n', '<leader>v',':silent !tmux split-window -dv<CR>')

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>rf", vim.lsp.buf.format)
vim.keymap.set("n", "fs", "gg=G :w<CR>")

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/dotfiles/nvim/lua/bbilling/packer.lua<CR>");

vim.keymap.set("n", "<leader>ds", function()
    vim.cmd("Alpha")
end)

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

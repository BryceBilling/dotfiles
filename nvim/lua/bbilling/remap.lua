vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set({ "n", "v" }, "<leader>dr", [["_d<CR>]])

vim.keymap.set("n", "r", "<C-r>")

-- Increment/decrement
vim.keymap.set('n', '+', '<C-a>')
vim.keymap.set('n', '-', '<C-x>')

-- Delete word backwards
vim.keymap.set('n', 'db', 'vb"_d')

-- Select all
vim.keymap.set('n', '<leader>a', 'gg<S-v>G')

-- Split window in vim
vim.keymap.set('n', 'hs', ':split<Return><C-w>w')
vim.keymap.set('n', 'vs', ':vsplit<Return><C-w>w')
vim.keymap.set('n', 'gh', '<C-w><Left>')
vim.keymap.set('n', 'gj', '<C-w><Down>')
vim.keymap.set('n', 'gk', '<C-w><Up>')
vim.keymap.set('n', 'gl', '<C-w><Right>')

-- Split window in tmux
vim.keymap.set('n', '<leader>h', ':silent !tmux split-window -dv<CR>')
vim.keymap.set('n', '<leader>v', ':silent !tmux split-window -dh<CR>')

vim.keymap.set('n', '<leader>wd', ':cd %:p:h')

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

vim.keymap.set("n", "<leader>rf", vim.lsp.buf.format)
vim.keymap.set("n", "fs", function()
    vim.lsp.buf.format()
    vim.cmd("w")
end)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Search and Replace
vim.keymap.set('n', '<leader>s', [[:s/]])
vim.keymap.set('n', '<leader>sw', [[:s/\<\><Left><Left>]])
vim.keymap.set('n', '<leader>sa', [[:%s/]])
vim.keymap.set('n', '<leader>saw', [[:%s/\<\><Left><Left>]])
vim.keymap.set("n", "<leader>sr", [[:%s///c<Left><Left><Left>]])
vim.keymap.set("n", "<leader>sra", [[:%s///g<Left><Left><Left>]])
vim.keymap.set("n", "<leader>sri", [[:%s/\<\>//I<Left><Left><Left><Left><Left>]])
vim.keymap.set("n", "<leader>srw", [[:%s/\<\>//c<Left><Left><Left><Left><Left>]])

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/dotfiles/nvim/lua/bbilling/packer.lua<CR>");

vim.keymap.set("n", "<leader>ds", function()
    vim.cmd("Alpha")
end)

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

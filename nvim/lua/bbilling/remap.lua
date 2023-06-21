vim.g.mapleader = " "
vim.o.mouse = "a"
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
vim.keymap.set("n", "+", "<C-a>")
vim.keymap.set("n", "-", "<C-x>")

-- Delete word backwards
vim.keymap.set("n", "db", 'vb"_d')

-- Select all
vim.keymap.set("n", "<leader>a", "ggVG", { noremap = true })

-- Split window in vim
vim.keymap.set("n", "hs", ":split<Return><C-w>w")
vim.keymap.set("n", "vs", ":vsplit<Return><C-w>w")
vim.keymap.set("n", "gh", "<C-w><Left>")
vim.keymap.set("n", "gj", "<C-w><Down>")
vim.keymap.set("n", "gk", "<C-w><Up>")
vim.keymap.set("n", "gl", "<C-w><Right>")

-- Split window in tmux
vim.keymap.set("n", "<leader>h", ":silent !tmux split-window -dv<CR>")
vim.keymap.set("n", "<leader>v", ":silent !tmux split-window -dh<CR>")

vim.keymap.set("n", "<leader>wd", ":cd %:p:h")

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

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/dotfiles/nvim/lua/bbilling/packer.lua<CR>")

vim.keymap.set("n", "<leader>ds", function()
	vim.cmd("Alpha")
end)

vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end)

vim.keymap.set({ "n", "v" }, "<leader>fe", function()
	vim.cmd("NvimTreeToggle")
end)

-- Projects
vim.keymap.set("n", "<leader>pp", function()
	vim.cmd("Telescope projects")
end)

-- Searchbox
vim.keymap.set("n", "<leader>S", ":SearchBoxIncSearch<CR>")
vim.keymap.set("n", "<leader>s", ':SearchBoxMatchAll title="Match All"<CR>')
vim.keymap.set("n", "<leader>ra", ":SearchBoxReplace<CR>")
vim.keymap.set("n", "<leader>rs", ":SearchBoxReplace confirm=menu<CR>")

-- Bufferline
vim.keymap.set("n", "tn", ":tabnew<CR>")
vim.keymap.set("n", "tq", ":bdelete<CR>")
vim.keymap.set("n", "tl", ":bnext<CR>")
vim.keymap.set("n", "th", ":bprevious<CR>")

-- Git
vim.keymap.set("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)

local status, nvimtree = pcall(require, "nvim-tree")
if (not status) then return end


local api = require("nvim-tree.api")

nvimtree.setup({
    sort_by = "case_sensitive",
    view = {
        width = 30,
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
})

vim.keymap.set('n', '<leader>nr', api.tree.reload)
vim.keymap.set('n', '<leader>ns', api.tree.search_node)
vim.keymap.set('n', '<leader>nd', api.tree.change_root_to_node)
vim.keymap.set('n', '<leader>ne', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<CR>', api.node.open.edit)

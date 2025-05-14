-- Command mode
vim.keymap.set('n', ';', ':')
vim.keymap.set('n', ':', ';')

-- Insert mode
vim.keymap.set('i', 'jk', '<ESC>')
vim.keymap.set('i', 'kj', '<ESC>')

-- Navigation
vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')

-- Fold
vim.keymap.set('n', '<space>', 'za')

-- NvimTree
vim.keymap.set('n', '<space>p', ':NvimTreeToggle<CR>', { desc = 'Toggle NvimTree' })

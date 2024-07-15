-- Plugin Manager
require('config.lazy')

-- Appearance
vim.cmd('syntax enable')
vim.cmd[[colorscheme tokyonight-night]]
vim.opt.number = true
vim.opt.ruler = true

-- Format
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2

-- Wrap
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.list = false

-- Fold
vim.opt.foldenable = true
vim.opt.foldmethod = "indent"
vim.opt.foldlevelstart = 20

-- Search
vim.opt.hlsearch = true

-- Mappings
vim.keymap.set('n', '<space>', 'za')
vim.keymap.set('n', ';', ':')
vim.keymap.set('n', ':', ';')
vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')
vim.keymap.set('i', 'jk', '<ESC>')
vim.keymap.set('i', 'kj', '<ESC>')

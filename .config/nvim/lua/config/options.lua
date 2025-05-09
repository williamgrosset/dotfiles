-- Appearance
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

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Functional
vim.opt.endofline = false
vim.opt.fixeol = false

-- Cursor
vim.opt.guicursor = table.concat({
  "n-v-c:block-blinkon1",
  "i:ver25-blinkwait700-blinkon400-blinkoff250"
}, ",")

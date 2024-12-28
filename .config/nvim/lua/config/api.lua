-- Auto-complete menu
vim.api.nvim_set_hl(0, "Pmenu", { bg = "#1e222a", fg = "#abb2bf" })
vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#61afef", fg = "#1e222a" })
vim.api.nvim_set_hl(0, "PmenuSbar", { bg = "#1e222a" })

-- Docs menu
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#1e222a", fg = "#abb2bf" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "#1e222a", fg = "#61afef" })

local border = {
  {"╭", "FloatBorder"},
  {"─", "FloatBorder"},
  {"╮", "FloatBorder"},
  {"│", "FloatBorder"},
  {"╯", "FloatBorder"},
  {"─", "FloatBorder"},
  {"╰", "FloatBorder"},
  {"│", "FloatBorder"},
}

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = border })

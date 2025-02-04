-- Auto-complete menu
vim.api.nvim_set_hl(0, "Pmenu", { bg = "#1e222a", fg = "#abb2bf" })
vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#61afef", fg = "#1e222a" })
vim.api.nvim_set_hl(0, "PmenuSbar", { bg = "#1e222a" })

-- Docs menu
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#1e222a", fg = "#abb2bf" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "#1e222a", fg = "#61afef" })

local border = {
  { "╭", "FloatBorder" },
  { "─", "FloatBorder" },
  { "╮", "FloatBorder" },
  { "│", "FloatBorder" },
  { "╯", "FloatBorder" },
  { "─", "FloatBorder" },
  { "╰", "FloatBorder" },
  { "│", "FloatBorder" },
}

-- LSP
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = border })

-- Diagnostic
vim.diagnostic.config({
  signs = false
})

-- Formatter toggle
vim.api.nvim_create_user_command("FormatDisable", function()
  vim.b.disable_autoformat = true
  print("Autoformat disabled for this buffer")
end, {})

vim.api.nvim_create_user_command("FormatEnable", function()
  vim.b.disable_autoformat = false
  print("Autoformat enabled for this buffer")
end, {})

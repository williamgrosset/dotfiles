return {
  "petertriho/nvim-scrollbar",
  config = function()
    require("scrollbar").setup({
      handlers = {
        diagnostic = true
      }
    })
  end
}

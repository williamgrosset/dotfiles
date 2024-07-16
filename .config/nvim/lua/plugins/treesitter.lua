return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = function()
      require"nvim-treesitter.configs".setup {
        highlight = {
          enable = true,
        }
      }
    end
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    dependencies = {
      "nvim-treesitter/nvim-treesitter"
    }
  }
}

return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = function()
      require"nvim-treesitter.configs".setup {
        ensure_installed = {
          "c",
          "rust",
          "python",
          "lua",
          "javascript",
          "typescript",
          "tsx",
          "json",
          "bash",
          "fish",
          "make",
          "git_config",
          "dockerfile"
        },
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

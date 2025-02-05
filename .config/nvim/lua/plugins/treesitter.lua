return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = function()
      require "nvim-treesitter.configs".setup {
        ensure_installed = {
          "c",
          "rust",
          "python",
          "lua",
          "html",
          "css",
          "scss",
          "javascript",
          "typescript",
          "tsx",
          "prisma",
          "json",
          "yaml",
          "bash",
          "fish",
          "make",
          "dockerfile",
          "git_config",
          "markdown",
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

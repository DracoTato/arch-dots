return  {
  "nvim-treesitter/nvim-treesitter",
  branch = 'master',
  lazy = false,
  build = ":TSUpdate",
  -- opts doesn't work for some reason, so config it is!
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { 
        "c", "lua", "markdown", "markdown_inline", "python", "html", "css", "javascript"
      },
      highlight = { enable = true },
      indent = { enable = true }

    })
  end
}

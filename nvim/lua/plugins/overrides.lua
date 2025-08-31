return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      pyright = {
        settings = {
          python = {
            -- Assume we're in a dir that
            -- contains a virtual env
            -- named ".venv"
            pythonPath = ".venv/bin/python",
          },
        },
      },
    },
  },
}

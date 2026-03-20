-- since this is just an example spec, don't actually load anything here and return an empty spec
-- stylua: ignore
-- if true then return {} end

-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {
{
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          -- This replaces the default root_dir logic
          root_dir = function(fname)
            local util = require("lspconfig.util")
            local root = util.root_pattern(".git", "pyproject.toml", "requirements.txt")(fname)
            return root or vim.fn.getcwd()
          end,
          settings = {
            python = {
              analysis = {
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
                diagnosticMode = "workspace",
              },
            },
          },
        },
      },
    },
  },
}

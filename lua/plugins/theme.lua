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
  -- add gruvbox
  -- { "ellisonleao/gruvbox.nvim" },
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      style = "night",
      transparent = false,
    },
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },

  -- Configure snacks for file explorer
  -- { "nvim-tree/nvim-web-devicons", lazy = true },
  -- {
  --   "folke/snacks.nvim",
  --   opts = {
  --     image = { enabled = true },
  --     picker = { enabled = true },
  --     explorer = { enabled = true },
  --     -- Add other snacks components as needed
  --   },
  -- },

  }

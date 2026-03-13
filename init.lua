-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.opt.clipboard = "unnamedplus"

vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#000000" })

-- vim.lsp.config("server_name", {
--   -- other settings...
--   root_dir = vim.fn.getcwd, -- Forces the root to be the current working directory
-- })
--
-- vim.lsp.enable("server_name")

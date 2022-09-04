local M = {}

M.ui = {
  theme = "onedark",
}

M.plugins = {
  override = {
    ["NvChad/ui"] = {
      statusline = {
        separator_style = "arrow",
      },
    },
    ["williamboman/mason.nvim"] = {
      ensure_installed = {
        "lua-language-server",
        "shellcheck",
        "shfmt",
        "stylua",
      },
    },
  },
  user = {
    ["folke/which-key.nvim"] = {
      disable = false,
    },
    ["goolord/alpha-nvim"] = {
      disable = false,
    },
  },
}

return M

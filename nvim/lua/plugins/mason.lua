return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    local mason = require("mason");
    local mason_lspconfig = require("mason-lspconfig");
    local mason_tool_installer = require("mason-tool-installer");

    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    });

    mason_lspconfig.setup({
      automatic_installation = true,
      ensure_installed = {
        "html",
        "cssls",
        "lua_ls",
        "graphql",
      },
    });

    mason_tool_installer.setup({
      ensure_installed = {
        "prettier",
        "stylua",
        "eslint_d",
      },
    });
  end
}

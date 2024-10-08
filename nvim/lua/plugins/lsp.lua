return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig");

    -- Example: Set up a specific language server (e.g., pyright)
    lspconfig.pyright.setup({})

    lspconfig.ts_ls.setup({});
    lspconfig.eslint.setup({});

    lspconfig.typos_lsp.setup({
      cmd_env = { RUST_LOG = "error" },
      init_options = {
        config = "~/code/typos-lsp/crates/typos-lsp/tests/typos.toml",
        diagnosticSeverity = "Hint",
      },
    });

    lspconfig.emmet_language_server.setup({
      filetypes = {
        "css",
        "eruby",
        "html",
        "javascript",
        "javascriptreact",
        "less",
        "sass",
        "scss",
        "pug",
        "typescriptreact",
        "php",
      },
      init_options = {
        includeLanguages = {},
        excludeLanguages = {},
        extensionsPath = {},
        preferences = {},
        showAbbreviationSuggestions = true,
        showExpandedAbbreviation = "always",
        showSuggestionsAsSnippets = false,
        syntaxProfiles = {},
        variables = {},
      },
    });
  end,
}

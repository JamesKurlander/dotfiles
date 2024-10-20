-- Vim
vim.keymap.set('n', '<leader>th', ':set hlsearch!<CR>', { noremap = true, silent = true });
vim.keymap.set('n', '<leader>ex', vim.cmd.Ex);
vim.keymap.set('n', '<leader>q', ':wqa!<CR>', { noremap = true, silent = true });

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {});
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {});
vim.keymap.set('n', '<leader>fb', builtin.buffers, {});
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {});
vim.keymap.set('n', '<leader>gc', builtin.git_commits, {});

-- LSP
vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev);
vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next);
vim.keymap.set("n", "<space>df", vim.diagnostic.open_float);
vim.keymap.set("n", "<space>dl", vim.diagnostic.setloclist);
vim.diagnostic.config({
  virtual_text = true,
  underline = false,
  signs = true,
  update_in_insert = false,
});
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspConfig", {}),
  callback = function(ev)
    local opts = { buffer = ev.buf };
    vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc";
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts);
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts);
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts);
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts);
    vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, opts);
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts);
    vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, opts);
    vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts);
    vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts);
    vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, opts);
    vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, opts);
    vim.keymap.set("n", "<space>wl", function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts);
    vim.keymap.set("n", "<space>f", function()
      vim.lsp.buf.format({ async = true })
    end, opts);
  end,
});

-- Noice
vim.keymap.set('n', '<leader>p', function()
  vim.diagnostic.open_float(nil, {
      scope = "line",
      focus = false,
      border = "rounded",
    })
end, { noremap = true, silent = true })

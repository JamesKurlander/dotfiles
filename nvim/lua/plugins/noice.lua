return {
  'folke/noice.nvim',
  event = 'VeryLazy',
  dependencies = {
    'MunifTanjim/nui.nvim',
    'rcarriga/nvim-notify',
  },
  config = function()
    require('notify').setup({
      render = 'compact',
      fps = 120,
    });

    require('noice').setup({
      cmdline = {
        format = {
          cmdline = {
            title = "  COMMAND  ",
          },
          search_down = {
            title = "  Search 󰁃  ",
          },
          search_up = {
            title = "  Search 󰁜  ",
          },
        },
      },
      notify = {
        view = 'notify',
      },
      messages = {
        view = 'notify',
        view_error = 'notify',
        view_warn = 'notify',
      },
      lsp = {
        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        override = {
          ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
          ['vim.lsp.util.stylize_markdown'] = true,
          ['cmp.entry.get_documentation'] = true,
        },
      },
      presets = {
        bottom_search = false,
        command_palette = false,
        long_message_to_split = true,
        inc_rename = false,
        lsp_doc_border = false,
      },
    });
  end
}

local colors = {
  blue = '#7aa3f7',
  green = '#9dce6a',
  orange = '#e0ae68',
  purple = '#bb9af7',
  darkGray = '#3a4361',
  lightGray = '#a9b1d6',
  black = '#15171e',
}

return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  lazy = false,
  config = function()
    require('lualine').setup {
      options = {
        theme = {
          normal = {
            a = {bg = colors.blue, fg = colors.black, gui = 'bold'},
            b = {bg = colors.darkGray, fg = colors.blue},
            c = {bg = 'none', fg = colors.lightGray},
          },
          insert = {
            a = {bg = colors.green, fg = colors.black, gui = 'bold'},
            b = {bg = colors.darkGray, fg = colors.green},
            c = {bg = 'none', fg = colors.lightGray},
          },
          visual = {
            a = {bg = colors.purple, fg = colors.black, gui = 'bold'},
            b = {bg = colors.darkGray, fg = colors.purple},
            c = {bg = 'none', fg = colors.lightGray},
          },
          replace = {
            a = {bg = colors.red, fg = colors.black, gui = 'bold'},
            b = {bg = colors.lightgray, fg = colors.white},
            c = {bg = 'none', fg = colors.white},
          },
          command = {
            a = {bg = colors.orange, fg = colors.black, gui = 'bold'},
            b = {bg = colors.darkGray, fg = colors.orange},
            c = {bg = 'none', fg = colors.lightGray},
          },
          inactive = {
            a = {bg = colors.darkgray, fg = colors.gray, gui = 'bold'},
            b = {bg = colors.darkgray, fg = colors.gray},
            c = {bg = 'none', fg = colors.gray},
          },
        },
        icons_enabled = true,
        --section_separators = {'', ''},
        --component_separators = {'', ''},
      },
      sections = {
        lualine_a = {
          {
            'mode',
            separator = { left = '', right = '' },
            padding = { left = 0, right = 0 },
          }
        },
        lualine_b = {},
        lualine_c = {
          {
            'filename',
            color = { bg = 'none' },
          }
        },
        lualine_x = {},
        lualine_y = {
          {
            'progress',
             separator = { left = '' },
             padding = { left = 0, right = 1 },
          }
        },
        lualine_z = {
          {
            'location',
             separator = { right = '' },
             padding = { left = 0, right = 0 },
          }
        },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      extensions = {},
    }
  end
}

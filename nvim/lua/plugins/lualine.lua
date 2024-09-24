local colors = {
  black        = '#282828',
  white        = '#ebdbb2',
  red          = '#fb4934',
  green        = '#b8bb26',
  blue         = '#83a598',
  yellow       = '#fe8019',
  gray         = '#a89984',
  darkgray     = '#3c3836',
  lightgray    = '#504945',
  inactivegray = '#7c6f64',
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
            a = {bg = colors.gray, fg = colors.black, gui = 'bold'},
            b = {bg = colors.lightgray, fg = colors.white},
            c = {bg = 'none', fg = colors.gray}
          },
          insert = {
            a = {bg = colors.blue, fg = colors.black, gui = 'bold'},
            b = {bg = colors.lightgray, fg = colors.white},
            c = {bg = 'none', fg = colors.white}
          },
          visual = {
            a = {bg = colors.yellow, fg = colors.black, gui = 'bold'},
            b = {bg = colors.lightgray, fg = colors.white},
            c = {bg = 'none', fg = colors.black}
          },
          replace = {
            a = {bg = colors.red, fg = colors.black, gui = 'bold'},
            b = {bg = colors.lightgray, fg = colors.white},
            c = {bg = 'none', fg = colors.white}
          },
          command = {
            a = {bg = colors.green, fg = colors.black, gui = 'bold'},
            b = {bg = colors.lightgray, fg = colors.white},
            c = {bg = 'none', fg = colors.black}
          },
          inactive = {
            a = {bg = colors.darkgray, fg = colors.gray, gui = 'bold'},
            b = {bg = colors.darkgray, fg = colors.gray},
            c = {bg = 'none', fg = colors.gray}
          }
        },
        icons_enabled = true,
        section_separators = {'', ''},
        component_separators = {'', ''},
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = {
          {
            'filename',
            color = { bg = 'none' },
          }
        },
        lualine_x = {},
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'location' },
      },
      tabline = {},
      extensions = {},
    }
  end
}

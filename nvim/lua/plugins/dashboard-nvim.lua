return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
      require('dashboard').setup {
          theme = 'doom',
          config = {
              header = {
                  [[                                    ]],
                  [[                                    ]],
                  [[                                    ]],
                  [[⠀⠀⠀⠀⠀⢀⣤⣴⣦⣶⣴⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣀⡀⠀⠀⠀⠀]],
                  [[⠀⠀⠀⠀⠚⠋⠉⠀⠀⠀⠀⠈⠙⢷⣦⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⠾⠛⠛⠉⠉⠛⠛⠷⠄⠀⠀]],
                  [[⠀⠀⠀⠀⢀⣀⣤⣤⣄⣀⠀⠀⠀⠀⠘⠷⠀⠀⠀⠀⠀⠀⣰⠞⠁⠀⠀⠀⠀⢀⣀⡀⠀⠀⠀⠀]],
                  [[⠀⠀⠀⢰⣿⢿⣽⣻⢾⣯⡧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣶⣿⢿⣻⣟⣿⣦⠀⠀]],
                  [[⠀⢀⡀⠈⠙⠛⠚⠋⠛⠊⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠾⠿⠽⠾⠓⠋⢀⡀]],
                  [[⠀⣿⠙⠶⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⠞⠋⣷]],
                  [[⠘⣿⠀⠀⡏⠙⠓⠶⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣴⠶⠛⠉⡯⠀⠀⣿]],
                  [[⠀⣿⠀⢀⡇⠀⠀⠀⠀⣿⠛⠛⠲⠶⠦⣦⣤⣤⣤⣤⣤⣶⠶⠶⠚⠛⠛⣿⠀⠀⠀⠀⡇⠀⢠⡟]],
                  [[⠀⢻⡄⢸⡇⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⢀⣿⠀⠀⠀⠀⢸⣟⠀⠀⠀⢀⡇⠀⣸⠃]],
                  [[⠀⠈⢷⣸⡇⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⢸⡷⠀⠀⠀⠀⢸⡇⠀⠀⠀⢸⡇⢠⡟⠀]],
                  [[⠀⠀⠈⢿⡇⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⢸⡇⠀⠀⠀⢸⣧⡟⠀⠀]],
                  [[⠀⠀⠀⠈⠳⣄⠀⠀⠀⣿⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⢸⡇⠀⠀⢀⣼⠏⠀⠀⠀]],
                  [[⠀⠀⠀⠀⠀⠘⢷⣄⢰⣟⠀⠀⠀⠀⢰⣯⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⢸⡇⢀⣤⠞⠁⠀⠀⠀⠀]],
                  [[⠀⠀⠀⠀⠀⠀⠀⠈⠻⢯⣄⡀⠀⠀⢸⡗⠀⠀⠀⠀⢸⡇⠀⠀⠀⢀⣼⠷⠛⠁⠀⠀⠀⠀⠀⠀]],
                  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠓⠶⠼⣧⣤⣤⣤⣤⣼⣧⠤⠶⠚⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
                  [[                                    ]],
                  [[                                    ]],
                  [[                                    ]],
              },
              center = {
                  {
                      icon = '  ',
                      desc = 'Find File                          ',
                      action = 'Telescope find_files',
                      shortcut = 'SPC f f'
                  },
                  {
                      icon = '  ',
                      desc = 'New File                           ',
                      action = 'ene!',
                      shortcut = 'SPC f n'
                  },
                  {
                      icon = '  ',
                      desc = 'Recent Files                       ',
                      action = 'Telescope oldfiles',
                      shortcut = 'SPC f r'
                  },
                  {
                      icon = '  ',
                      desc = 'Bookmarks                          ',
                      action = 'Telescope marks',
                      shortcut = 'SPC f b'
                  },
                  {
                      icon = '  ',
                      desc = 'Last Session                       ',
                      action = 'SessionLoad',
                      shortcut = 'SPC s l'
                  },
              },
              footer = {
                  [[                       ]],
                  [[                       ]],
                  [[SEE YOU SPACE COWBOY...]],
              }
          }
      }
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}

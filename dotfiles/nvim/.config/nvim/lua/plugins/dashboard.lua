return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      theme = 'hyper',
      config = {
        header = {
          '███╗   ██╗███████╗ ██████╗ ██████╗ ██████╗ ███████╗',
          '████╗  ██║██╔════╝██╔═══██╗██╔══██╗██╔══██╗██╔════╝',
          '██╔██╗ ██║█████╗  ██║   ██║██████╔╝██████╔╝█████╗  ',
          '██║╚██╗██║██╔══╝  ██║   ██║██╔═══╝ ██╔═══╝ ██╔══╝  ',
          '██║ ╚████║███████╗╚██████╔╝██║     ██║     ███████╗',
          '╚═╝  ╚═══╝╚══════╝ ╚═════╝ ╚═╝     ╚═╝     ╚══════╝',
        },
        center = {
          { icon = '  ', desc = 'Recently latest session    ', action = 'SessionLoad' },
          { icon = '  ', desc = 'Recently opened files      ', action = 'DashboardFindHistory' },
          { icon = '  ', desc = 'Find File                  ', action = 'Telescope find_files' },
          { icon = '  ', desc = 'File Browser               ', action = 'Telescope file_browser' },
          { icon = '  ', desc = 'Find word                  ', action = 'Telescope live_grep' },
          { icon = '  ', desc = 'Open Personal dotfiles     ', action = 'Telescope dotfiles path=' .. os.getenv 'HOME' .. '/.dotfiles' },
        },
        footer = { '' },
      },
    }
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons' } },
}

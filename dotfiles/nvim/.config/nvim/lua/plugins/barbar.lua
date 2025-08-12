return {
  'romgrk/barbar.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'lewis6991/gitsigns.nvim', -- fixed typo in 'lewsis'
  },
  init = function()
    -- Disable auto-setup, we'll set it up manually
    vim.g.barbar_auto_setup = false
  end,
  opts = {},
  version = '^1.0.0',
  config = function(_, opts)
    require('barbar').setup(opts)

    local map = vim.api.nvim_set_keymap
    local map_opts = { noremap = true, silent = true }

    -- Move between buffers
    map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', map_opts)
    map('n', '<A-.>', '<Cmd>BufferNext<CR>', map_opts)

    -- Re-order buffers
    map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', map_opts)
    map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', map_opts)

    -- Goto buffer in position...
    for i = 1, 9 do
      map('n', '<A-' .. i .. '>', '<Cmd>BufferGoto ' .. i .. '<CR>', map_opts)
    end

    -- Pin/unpin buffer
    map('n', '<A-p>', '<Cmd>BufferPin<CR>', map_opts)

    -- Close buffer
    map('n', '<A-c>', '<Cmd>BufferClose<CR>', map_opts)
  end,
}

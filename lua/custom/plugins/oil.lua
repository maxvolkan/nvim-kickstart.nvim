return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  lazy = false,
  dependencies = { { 'nvim-mini/mini.icons', opts = {} } },
  opts = {
    -- Oil acts as a real buffer — use :w to save changes, :q to cancel
    view_options = {
      show_hidden = true, -- show dotfiles
    },
    -- Float oil in a centered window instead of replacing the current buffer
    float = {
      padding = 2,
      max_width = 80,
      max_height = 30,
    },
    keymaps = {
      ['<C-s>'] = false, -- disable horizontal split (conflicts with save)
      ['<C-h>'] = false, -- disable horizontal split
      ['<C-l>'] = false, -- free up window nav
      ['<C-r>'] = 'actions.refresh',
      ['q'] = 'actions.close',
      ['!'] = 'actions.open_terminal',
    },
  },
}

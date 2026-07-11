return {
  'Zeioth/markmap.nvim',
  build = 'yarn global add markmap-cli',
  cmd = { 'MarkmapOpen', 'MarkmapSave', 'MarkmapWatch', 'MarkmapWatchStop' },
  opts = {
    html_output = vim.fn.stdpath 'cache' .. '/markmap.html',
    hide_toolbar = false,
    grace_period = 3600000,
  },
  config = function(_, opts)
    require('markmap').setup(opts)
  end,
}

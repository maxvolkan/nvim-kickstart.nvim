return {
  'MeanderingProgrammer/render-markdown.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.icons' },
  ft = { 'markdown', 'Avante' }, -- lazy-load; add 'Avante' if you use avante.nvim
  ---@module 'render-markdown'
  ---@type render.md.UserConfig
  opts = {
    heading = {
      -- distinct background highlight per heading level
      backgrounds = {
        'RenderMarkdownH1Bg',
        'RenderMarkdownH2Bg',
        'RenderMarkdownH3Bg',
        'RenderMarkdownH4Bg',
        'RenderMarkdownH5Bg',
        'RenderMarkdownH6Bg',
      },
      -- use a sign in the gutter to show heading level
      sign = true,
    },
    code = {
      -- show the language name above code blocks
      language_pad = 1,
      -- draw a border around code blocks
      style = 'full',
      -- highlight the code block background
      highlight = 'RenderMarkdownCode',
    },
    checkbox = {
      -- render [ ] / [x] / [-] as unicode symbols
      unchecked = { icon = '󰄱 ' },
      checked = { icon = '󰱒 ' },
      custom = {
        todo = { raw = '[-]', rendered = '󰥔 ', highlight = 'RenderMarkdownTodo' },
      },
    },
    bullet = {
      -- use distinct icons per indent level
      icons = { '●', '○', '◆', '◇' },
    },
    -- render tables with proper borders
    pipe_table = { style = 'full' },
    -- dim non-focused buffers slightly
    render_modes = { 'n', 'c' },
  },
}

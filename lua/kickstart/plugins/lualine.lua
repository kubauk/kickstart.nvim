return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup {
      options = { theme = 'ayu_mirage' },
      sections = {
        lualine_c = { { 'filename', path = 4 } },
      },
    }
  end,
}

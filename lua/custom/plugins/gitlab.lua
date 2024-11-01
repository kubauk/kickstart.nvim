return {
  'harrisoncramer/gitlab.nvim',
  dependencies = {
    'MunifTanjim/nui.nvim',
    'nvim-lua/plenary.nvim',
    'sindrets/diffview.nvim',
    'stevearc/dressing.nvim', -- Recommended but not required. Better UI for pickers.
    'nvim-tree/nvim-web-devicons', -- Recommended but not required. Icons in discussion tree.
  },
  enabled = true,
  build = function()
    require('gitlab.server').build(true)
  end, -- Builds the Go binary
  vim.keymap.set('n', '<leader>cm', function()
    local merge_request_name = vim.fn.input 'Merge request name: '
    local command_string = string.format('glab mr create --fill --fill-commit-body -y -t "%s"', merge_request_name)
    os.execute(command_string)
  end, { desc = 'Create [M]erge request' }),
}

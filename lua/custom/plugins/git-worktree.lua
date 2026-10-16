return {
  'polarmutex/git-worktree.nvim',
  version = '^2',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
  },
  keys = {
    {
      '<leader>gw',
      function()
        require('telescope').extensions.git_worktree.git_worktree()
      end,
      desc = '[G]it [W]orktrees (switch/delete)',
    },
    {
      '<leader>gW',
      function()
        require('telescope').extensions.git_worktree.create_git_worktree()
      end,
      desc = '[G]it [W]orktree create',
    },
  },
  config = function()
    local Hooks = require 'git-worktree.hooks'
    local config = require 'git-worktree.config'

    -- Reopen the current file in the new worktree after switching
    Hooks.register(Hooks.type.SWITCH, Hooks.builtins.update_current_buffer_on_switch)
    Hooks.register(Hooks.type.DELETE, function()
      vim.cmd(config.update_on_change_command)
    end)

    require('telescope').load_extension 'git_worktree'
  end,
}

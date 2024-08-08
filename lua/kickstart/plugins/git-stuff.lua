return {
  'ThePrimeagen/git-worktree.nvim',
  config = function()
    require('git-worktree').setup()
    require('telescope').load_extension 'git_worktree'
    vim.keymap.set('n', '<leader>cw', ":lua require('telescope').extensions.git_worktree.git_worktrees()")
  end,
}

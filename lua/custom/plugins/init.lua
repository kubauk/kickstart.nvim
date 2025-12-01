-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  require 'custom.plugins.refactoring',
  require 'custom.plugins.lualine',
  require 'custom.plugins.gitlab',
  require 'custom.plugins.copilot',
  require 'custom.plugins.trouble',
  require 'custom.plugins.typecheck',
  require 'custom.plugins.oil',
  {
    'RaafatTurki/hex.nvim',
    -- defaults
    config = function()
      require('hex').setup {

        -- cli command used to dump hex data
        dump_cmd = 'xxd -g 1 -u',

        -- cli command used to assemble from hex data
        assemble_cmd = 'xxd -r',

        -- function that runs on BufReadPre to determine if it's binary or not
        is_file_binary_pre_read = function()
          -- logic that determines if a buffer contains binary data or not
          -- must return a bool
        end,

        -- function that runs on BufReadPost to determine if it's binary or not
        is_file_binary_post_read = function()
          -- logic that determines if a buffer contains binary data or not
          -- must return a bool
        end,
      }
    end,
  },
}

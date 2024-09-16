return {
  'crispgm/cmp-beancount',
  config = function()
    require('cmp').setup {
      sources = {
        {
          name = 'beancount',
          option = {
            account = '/path/to/account.bean',
          },
        },
      },
    }
  end,
}

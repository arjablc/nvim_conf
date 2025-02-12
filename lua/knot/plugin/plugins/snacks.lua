return {
  'folke/snacks.nvim',

  config = function()
    require('snacks').setup {
      scroll = {},
      lazygit = {},
      notifier = {},
      toggle = {},
      zen = {},
      indent = {},
      animate = {},
      dashboard = {
        enabled = true,
        preset = {},
      },
    }
    local map = function(keys, func, desc, mode)
      mode = mode or 'n'
      vim.keymap.set(mode, keys, func, { desc = 'Snacks: ' .. desc })
    end

    map('<leader>gl', function()
      Snacks.lazygit()
    end, 'lazygit')
    map('<leader>nh', function()
      Snacks.notifier.show_history()
    end, 'Notification History')
    map('<leader>bd', function()
      Snacks.bufdelete()
    end, 'Buffer Delete')
    map('<leader>nd', function()
      Snacks.notifier.hide()
    end, 'Buffer Delete')

    Snacks.toggle.animate():map '<leader>tA'
    Snacks.toggle.zen():map '<leader>tz'
    Snacks.toggle.indent():map '<leader>ti'
    Snacks.toggle.inlay_hints():map '<leader>th'
    -- vim.keymap.set('n', '<', rhs, opts?)
  end,
}

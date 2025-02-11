return {
  'folke/snacks.nvim',

  -- config = function()
  --   require('snacks').setup {
  --     scroll = {},
  --     lazygit = {},
  --     notifier = {},
  --     toggle = {},
  --     zen = {},
  --     indent = {},
  --     animate = {},
  --   }
  --
  --   local map = function(keys, func, desc, mode)
  --     mode = mode or 'n'
  --     vim.keymap.set(mode, keys, func, { desc = 'Snacks: ' .. desc })
  --   end
  --
  --   map('<leader>lg', function()
  --     Snacks.lazygit()
  --   end, 'lazygit')
  --
  --   Snacks.toggle.animate():map '<leader>uA'
  --   Snacks.toggle.zen():map '<leader>uz'
  --   Snacks.toggle.indent():map '<leader>ui'
  --   -- vim.keymap.set('n', '<', rhs, opts?)
  -- end,

  ---@type snacks.config
  opts = {
    scroll = {},
    lazygit = {},
    notifier = {},
    toggle = {},
    zen = {},
    indent = {},
    animate = {},
  },
  keys = {
    { '' },
  },
}

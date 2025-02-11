return {
  'nvim-neo-tree/neo-tree.nvim',
  lazy = true,
  branch = 'v3.x',
  keys = {
    {
      '<leader>ee',
      '<cmd>Neotree show filesystem right toggle<CR>',
      desc = 'Neotree explorer right',
    },
    {
      '<leader>ef',
      '<cmd>Neotree focus reveal right toggle<CR>',
      desc = 'Neotree explorer right',
    },
  },

  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  -- config = function()
  --   require('neo-tree').setup {
  --
  opts = {
    window = {
      fuzzy_finder_mappings = {
        ['<C-j'] = 'move_cursor_down',
        ['<C-k'] = 'move_cursor_up',
      },
    },
    mapping = {
      ['Z'] = 'expand_all_nodes',
    },
  },
}

--   local keymap = vim.keymap -- for conciseness
--
--   keymap.set('n', '<leader>ee', '<cmd>Neotree show filesystem right toggle<CR>', { desc = 'Toggle file explorer' }) -- toggle file explorer
--   keymap.set('n', '<leader>ef', '<cmd>Neotree focus reveal right<CR>', { desc = 'Toggle file explorer on current file' }) -- toggle file explorer on current file
-- end,

return {
  'nvim-telescope/telescope.nvim',
  cmd = {
    'Telescope',
    'TodoTelescope',
  },
  keys = {
    { '<leader>sf', '<cmd>Telescope find_files<cr>', desc = '[S]earch [F]iles' },
    { '<leader>ss', '<cmd>Telescope builtin<cr>', desc = '[S]earch [S]elect Telescope' },
    { '<leader>sw', '<cmd>Telescope grep_string<cr>', desc = '[S]earch current [W]ord' },
    { '<leader>sg', '<cmd>Telescope live_grep<cr>', desc = '[S]earch by [G]rep' },
    { '<leader>sd', '<cmd>Telescope diagnostics<cr>', desc = '[S]earch [D]iagnostics' },
    { '<leader>sr', '<cmd>Telescope resume<cr>', desc = '[S]earch [R]esume' },
    { '<leader>s.', '<cmd>Telescope oldfiles<cr>', desc = '[S]earch Recent Files ("." for repeat)' },
    { '<leader><leader>', '<cmd>Telescope buffers<cr>', desc = '[ ] Find existing buffers' },
    { '<leader>st', '<cmd>TodoTelescope<cr>', desc = '[S]earch [T]odos' },
    -- vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
    -- vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })
    { '<leader>/', function()
      require('telescope.builtin').current_buffer_fuzzy_find(
        require('telescope.themes').get_dropdown {
          winblend = 10,
          previewer = false,
        }
      )
    end, desc = '[/] Fuzzily search in current buffer' },
    { '<leader>s/', function()
      require('telescope.builtin').live_grep {
        grep_open_files = true,
        prompt_title = 'Live Grep in Open Files',
      }
    end, desc = '[S]earch [/] in Open Files' },
    { '<leader>sn', function()
      require('telescope.builtin').find_files { cwd = vim.fn.stdpath 'config' }
    end, desc = '[S]earch [N]eovim files' },
  },
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'folke/todo-comments.nvim',
      event = 'BufReadPre',
      cmd = 'TodoTelescope',
    },
    { -- If encountering errors, see telescope-fzf-native README for installation instructions
      'nvim-telescope/telescope-fzf-native.nvim',
      -- `build` is used to run some command when the plugin is installed/updated.
      -- This is only run then, not every time Neovim starts up.
      build = 'make',
      -- `cond` is a condition used to determine whether this plugin should be
      -- installed and loaded.
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
    { 'nvim-telescope/telescope-ui-select.nvim' },
    -- Useful for getting pretty icons, but requires a Nerd Font.
    { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
  },
  config = function()
    -- [[ Configure Telescope ]]
    -- See `:help telescope` and `:help telescope.setup()`

    local actions = require 'telescope.actions'
    local telescope = require 'telescope'

    telescope.setup {
      -- You can put your default mappings / updates / etc. in here
      --  All the info you're looking for is in `:help telescope.setup()`
      defaults = {
        mappings = {
          i = {
            ['<C-k>'] = actions.move_selection_previous,
            ['<C-j>'] = actions.move_selection_next,
          },
        },
      },
      -- pickers = {}
      extensions = {
        ['ui-select'] = {
          require('telescope.themes').get_dropdown(),
        },
      },
    }

    -- Enable Telescope extensions if they are installed
    pcall(telescope.load_extension, 'fzf')
    pcall(telescope.load_extension, 'ui-select')
  end,
}
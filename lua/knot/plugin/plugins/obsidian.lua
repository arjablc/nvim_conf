return {
  'epwalsh/obsidian.nvim',
  version = '*', -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = 'markdown',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  -- event = {

  -- Load plugin for markdown files in the specified path
  -- 'BufReadPre '
  --   .. vim.fn.expand '~'
  --   .. '/notes/*.md',
  -- 'BufNewFile ' .. vim.fn.expand '~' .. '/notes/*.md',
  -- },
  config = function()
    require('obsidian').setup {
      workspaces = {
        {
          name = 'Notes',
          path = '~/notes/',
        },
      },
      ui = {
        enable = true,
      },

      -- Optional: Customize how note IDs are generated given an optional title.
      ---@param title string|nil
      ---@return string
      note_id_func = function(title)
        local suffix = ''
        if title ~= nil then
          -- If title is given, transform it into a valid file name.
          suffix = title:gsub(' ', '_'):gsub('[^A-Za-z0-9_-]', ''):lower()
        else
          -- If title is nil, generate a random 4-character suffix.
          for _ = 1, 4 do
            suffix = suffix .. string.char(math.random(65, 90)) -- Random uppercase letters
          end
        end
        -- return os.time() .. '-' .. suffix -- Include a timestamp for uniqueness
        return '' .. suffix
      end,
    }
    -- Set conceallevel for markdown files to improve readability
    vim.opt_local.conceallevel = 2
  end,
}

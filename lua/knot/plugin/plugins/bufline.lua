return {
  'akinsho/bufferline.nvim',
  event = 'VeryLazy',
  dependencies = { 'nvim-tree/nvim-web-devicons' }, -- Ensure web-devicons is loaded
  keys = {
    { '<leader>bp', '<Cmd>BufferLineTogglePin<CR>', desc = 'Toggle Pin' },
    { '<leader>bP', '<Cmd>BufferLineGroupClose ungrouped<CR>', desc = 'Delete Non-Pinned Buffers' },
    { '<leader>br', '<Cmd>BufferLineCloseRight<CR>', desc = 'Delete Buffers to the Right' },
    { '<leader>bl', '<Cmd>BufferLineCloseLeft<CR>', desc = 'Delete Buffers to the Left' },
    { '<S-h>', '<cmd>BufferLineCyclePrev<cr>', desc = 'Prev Buffer' },
    { '<S-l>', '<cmd>BufferLineCycleNext<cr>', desc = 'Next Buffer' },
    { '[b', '<cmd>BufferLineCyclePrev<cr>', desc = 'Prev Buffer' },
    { ']b', '<cmd>BufferLineCycleNext<cr>', desc = 'Next Buffer' },
    { '[B', '<cmd>BufferLineMovePrev<cr>', desc = 'Move buffer prev' },
    { ']B', '<cmd>BufferLineMoveNext<cr>', desc = 'Move buffer next' },
  },
  config = function()
    local snack = require 'snacks'
    local buff = require 'bufferline'
    local opts = {
      options = {
        style_preset = buff.style_preset.default,
        close_command = function(n)
          snack.bufdelete(n)
        end,
        right_mouse_command = function(n)
          snack.bufdelete(n)
        end,
        middle_mouse_command = function(n)
          snack.bufdelete(n)
        end,

        indicator = {
          style = 'underline',
        },

        diagnostics = 'nvim_lsp',
        always_show_bufferline = false,
        -- diagnostics_update_on_insert = true,
        diagnostics_indicator = function(_, _, diag)
          local icons = {
            Error = ' ', -- Alternative: ✖, ❌
            Warn = ' ', -- Alternative: ⚠
          }
          local ret = (diag.error and icons.Error .. diag.error .. ' ' or '') .. (diag.warning and icons.Warn .. diag.warning or '')
          return vim.trim(ret)
        end,

        show_buffer_icons = true,
        show_close_icon = true,
        seperator_style = 'slant',

        offsets = {
          {
            filetype = 'neo-tree',
            text = 'Neo-tree',
            highlight = 'Directory',
            text_align = 'left',
          },
          {
            filetype = 'custom_layout_box',
          },
        },
        get_element_icon = function(opts)
          local devicons = require 'nvim-web-devicons'
          local icon, _ = devicons.get_icon(opts.path, nil, { default = true })
          return icon
        end,
      },
    }

    require('bufferline').setup(opts)

    vim.api.nvim_create_autocmd({ 'BufAdd', 'BufDelete' }, {
      callback = function()
        vim.schedule(function()
          pcall(require('bufferline').setup, opts)
        end)
      end,
    })
  end,
}

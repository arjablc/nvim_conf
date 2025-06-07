return {
  'windwp/nvim-ts-autotag',
  lazy = true,
  ft = { 'typescript', 'javascript', 'typescriptreact', 'javascriptreact' },
  config = function()
    require('nvim-ts-autotag').setup()
  end,
}

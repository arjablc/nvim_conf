vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local isVsCode = vim.g.vscode
if isVsCode then
  require 'vs_code'
else
  require 'knot.configs'
  require 'knot.plugin'
end

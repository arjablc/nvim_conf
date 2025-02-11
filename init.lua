vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local isVsCode = vim.g.vscode
if isVsCode then
  require 'vscode'
else
  require 'knot.configs'
  require 'knot.plugin'
end

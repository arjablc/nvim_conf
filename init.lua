vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local isVsCode = vim.g.vscode
if isVsCode then
	require 'vs_config'
else
	require 'knot.configs'
	require 'knot.plugin'
	vim.opt.exrc = true
end

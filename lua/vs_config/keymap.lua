vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
local keymap = vim.keymap

--insert mode
keymap.set('i', 'jk', '<Esc>', { desc = 'get back to normal mode quick' })

--close active editor
keymap.set('n', '<leader>x', "<cmd> lua require('vscode').action('workbench.action.closeActiveEditor')<CR>", { desc = 'close active editor' })

keymap.set('n', '<leader>s=', '<C-w>=', { desc = 'equalize the splits' })
--tab navigation
keymap.set({ 'n' }, '<leader>tn', "<cmd>lua require('vscode').action('workbench.action.nextEditor')<CR>", { desc = 'goto next tab' })
keymap.set({ 'n' }, '<leader>tp', "<cmd>lua require('vscode').action('workbench.action.previousEditor')<CR>", { desc = 'goto prev tab' })
keymap.set({ 'n' }, '<leader>to', '<cmd>tabonly<CR>', { desc = 'close all tab except for current' })

--for split navigations
keymap.set({ 'n' }, '<C-k>', "<cmd> lua require('vscode').action('workbench.action.navigateUp')<CR>", { desc = 'Move focus to the up  window' })
keymap.set({ 'n' }, '<C-k>', "<cmd> lua require('vscode').action('workbench.action.navigateUp')<CR>", { desc = 'Move focus to the up  window' })
keymap.set({ 'n' }, '<C-j>', "<cmd> lua require('vscode').action('workbench.action.navigateDown')<CR>", { desc = 'Move focus to the down  window' })
keymap.set({ 'n' }, '<C-j>', "<cmd> lua require('vscode').action('workbench.action.navigateDown')<CR>", { desc = 'Move focus to the down  window' })
keymap.set({ 'n' }, '<C-h>', "<cmd> lua require('vscode').action('workbench.action.navigateLeft')<CR>", { desc = 'Move focus to the left  window' })
keymap.set({ 'n' }, '<C-h>', "<cmd> lua require('vscode').action('workbench.action.navigateLeft')<CR>", { desc = 'Move focus to the left  window' })
keymap.set({ 'n' }, '<C-l>', "<cmd> lua require('vscode').action('workbench.action.navigateRight')<CR>", { desc = 'Move focus to the right  window' })
keymap.set({ 'n' }, '<C-l>', "<cmd> lua require('vscode').action('workbench.action.navigateRight')<CR>", { desc = 'Move focus to the right  window' })

--terminal navigaition
keymap.set({ 'n', 'v' }, '<leader>tt', "<cmd> lua require('vscode').action('workbench.action.terminal.focus')<CR>", { desc = 'focus in the terminal' })

--explor
keymap.set({ 'n', 'v' }, '<leader>ee', "<cmd> lua require('vscode').action('workbench.view.explorer')<CR>", { desc = 'focus in the terminal' })

--no highlight
keymap.set({ 'n', 'v' }, '<leader>nh', '<cmd>noh<CR>', { desc = 'focus in the terminal' })

--code actions
keymap.set('n', '<C-.>', "<cmd> lua require('vscode').action('editor.action.quickFix')<CR>", { desc = 'access the quickfix list' })
--toggle hide and unhide the side bar
keymap.set(
  { 'n', 'v' },
  '<leader>hb',
  "<cmd> lua require('vscode').action('workbench.action.toggleSidebarVisibility')<CR>",
  { desc = 'toggle the primary sidebar' }
)

--command mode with ;
--not using cause of conflict with the F,f,t,T maps
--
-- For half page scroll and center cursor_pos
keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'half scroll and center cursor' })
keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'half scroll and center cursor' })

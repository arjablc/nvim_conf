-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`
--

vim.keymap.set('i', 'jk', '<ESC>', { desc = 'Insert to normal mode with jk' })
-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('n', 'U', '<C-r>', { desc = 'Better redo button' })

-- ctrl backspace for deletion
-- vim.keymap.set('i', '<C-BS>', '<C-w>', { desc = 'ctrl backspace for delete word' })

-- Diagnostic keymaps
-- TODO: remove this for trouble.nvim vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
vim.keymap.set('n', '<leader>sm', '<C-w>|', { desc = 'Maximize width of split' })
vim.keymap.set('n', '<leader>s=', '<C-w>=', { desc = 'Equalizeo split' })

-- For half page scroll and center cursor_pos
--
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'half scroll and center cursor' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'half scroll and center cursor' })

-- My Keybindings --
local map = vim.keymap.set

map('n', '<C-b>', ':make<CR><CR>', {})
map('n', '<C-e>', ':copen<CR>', {})
map('n', '<C-e><C-q>', ':cclose<CR>', {})

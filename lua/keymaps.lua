local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

map('i', 'jj', '<Esc>', opts)
map('i', 'оо', '<Esc>', opts)

map('v', '<C-c>', '"+yi', {})
map('v', '<C-x>', '"+c', {})
map('v', '<C-v>', 'c<ESC>"+p', {})
map('i', '<C-v>', '<ESC>"+pa', {})


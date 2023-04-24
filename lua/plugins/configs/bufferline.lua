vim.opt.termguicolors = true
require("bufferline").setup{
    options = {
        close_command = "bdelete! %d",       -- can be a string | function, | false see "Mouse actions"
    },
}

vim.api.nvim_set_keymap('n', '<A-c>', ':bp | sp | bn | bd<CR>', {})
vim.api.nvim_set_keymap('n', '<A-,>', ':BufferLineCyclePrev<CR>', {})
vim.api.nvim_set_keymap('n', '<A-.>', ':BufferLineCycleNext<CR>', {})


local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fa', "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fz', "<cmd> Telescope current_buffer_fuzzy_find <CR>", {})

-- git
vim.keymap.set('n', '<leader>gm', "<cmd> Telescope git_commits <CR>", {})
vim.keymap.set('n', '<leader>gs', "<cmd> Telescope git_status <CR>", {})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>tff', builtin.find_files, {})
vim.keymap.set('n', '<leader>tgf', builtin.git_files, {})
vim.keymap.set('n', '<leader>tlg', function()
    builtin.live_grep({ search = vim.fn.expand("<cword>") });
end)
vim.keymap.set('n', 'gs', function()
    builtin.grep_string({ search = "" })
end)
vim.keymap.set('n', 'gr', function()
    builtin.grep_string({ search = vim.fn.expand("<cword>") });
end)

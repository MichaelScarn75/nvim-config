local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>tff', builtin.find_files, {})
vim.keymap.set('n', '<leader>tgf', builtin.git_files, {})
vim.keymap.set('n', '<leader>tlg', function()
    local text = vim.fn.getreg("v")
    if text ~= nil and text ~= "" then
        builtin.grep_string({ search = text })
    else
        builtin.live_grep({ search = vim.fn.expand("<cword>") });
    end
end)
vim.keymap.set('n', 'gr', function()
    local text = vim.fn.getreg("v")
    if text ~= nil and text ~= "" then
        builtin.grep_string({ search = text })
    else
        builtin.grep_string({ search = vim.fn.expand("<cword>") });
    end
end)

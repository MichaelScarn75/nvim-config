-- toggle diagnostic virtual text
vim.keymap.set('n', '<leader>vto', function() vim.diagnostic.config({ virtual_text = true }) end)
vim.keymap.set('n', '<leader>vtf', function() vim.diagnostic.config({ virtual_text = false }) end)

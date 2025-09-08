local lsp = require("lsp-zero")

lsp.preset('recommended')

-- Use mason-lspconfig for managing LSP servers
require('mason').setup()
require('mason-lspconfig').setup({
    ensure_installed = {
        'omnisharp',
        'eslint',
        'omnisharp_mono',
        'html',
        'jsonls',
        'lua_ls',
        'lemminx',
        'ts_ls',
    }
})



local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>']= cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete(),
})

lsp.on_attach(function(client, bufnr)
    local opts = {buffer = bufnr, remap = false}
    client.server_capabilities.semanticTokensProvider = nil

    vim.keymap.set("n", "gd", "<cmd>vsplit | lua vim.lsp.buf.definition()<CR>", opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>lws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>lof", function() vim.lsp.buf.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.lsp.buf.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.lsp.buf.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>lca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>lrr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>lrn", function() vim.lsp.buf.rename() end, opts)
end)

lsp.setup()

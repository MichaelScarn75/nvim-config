require('lspconfig').ts_ls.setup({
  root_dir = require('lspconfig.util').root_pattern("tsconfig.json", "package.json", ".git"),
  on_attach = function(client, bufnr)
    -- keymaps
  end,
  init_options = { hostInfo = "neovim" }
})

require('lspconfig').prismals.setup({
  on_attach = function(client, bufnr)
    -- keymaps
  end,
  init_options = { hostInfo = "neovim" }
})

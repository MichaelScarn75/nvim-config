--vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.timeoutlen = 400

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = "C:\\Users\\chong\\.vim\\undodir"
vim.g.OmniSharp_server_path = "C:\\Program Files (x86)\\omnisharp-win-x64\\OmniSharp.exe"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "100"

-- Create an autocommand for "BufRead" events
vim.api.nvim_create_autocmd("BufRead", {
  -- This autocommand will only trigger if the buffer name matches the following patterns
  pattern = { "*.edit.tmp" },
  -- The autocommand will trigger the following lua function
  callback = function()
    -- In lua, `[[ ... ]]` is a literal string. If i used double quotes
    -- instead, then next line would look like this:
    --
    -- `if vim.fn.search("hosts:\\|tasks:", "nw") then`
    --
    -- Notice how i had to escape the backslash
    if vim.fn.search([[hosts:\|tasks:]], "nw") then
      -- Thi uses Neovim's options api. Alternatively, you could do this:
      --
      -- `vim.cmd("set filetype = yaml.ansible")`
      vim.opt.filetype = ".sql"
    end
  end
})

vim.g['airline_theme'] = 'dark'
vim.g['airline#extensions#tabline#enabled'] = 1
vim.g['airline#extensions#tabline#left_sep'] = '|'
vim.g['airline#extensions#tabline#left_alt_sep'] = '>'
--[[
--default
--jsformatter
--unique_tail
--unique_tail_improved
--]]
vim.g['airline#extensions#tabline#formatter'] = 'unique_tail'
vim.g['OmniSharp_server_stdio'] = 1

-- Turn diagnostic virtual text on on startup
vim.diagnostic.config({ virtual_text = true })

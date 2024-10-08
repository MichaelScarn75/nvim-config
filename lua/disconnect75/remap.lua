--[[ These 3 lines works the same
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>pv", ':Ex<CR>')
vim.keymap.set("n", "<leader>pv", '<cmd>Ex<cr>')
]]--

-- Custom leader key for custom commands
vim.g.mapleader = " "
-- Space + pv opens up netrw file navigation system
vim.keymap.set("n", "<leader>pv", "<cmd>Ex<CR>")

-- Move lines up and down in Visual Mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Join lines without view moves to the end of current line
vim.keymap.set("n", "J", "mzJ`z")
-- Jump blocks and center view
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- Navigate search results and center view
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<leader>zig", "<cmd>LspRestart<cr>")
-- No idea what VimWithMe does
vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)
-- Paste without deleting clipboard registry
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Yank to vim registry only
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
-- Yank to system registry
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])
-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")
-- Next line only works on TMUX
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
-- Quick fix list
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
-- Replace current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- Make the current editiing bash file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

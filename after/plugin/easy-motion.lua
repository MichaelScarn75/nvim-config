-- <Leader>f{char} to move to {char} (not sure how leader-e differs from leader-f for now)
vim.keymap.set({"n", "v"}, "<leader>e", "<Plug>(easymotion-s)")
-- <Leader>f{char} to move to {char} from the cursor forward
vim.keymap.set({"n", "v"}, "<leader>f", "<Plug>(easymotion-f)")


-- <Leader>f{char} to move to {char}  (not sure how leader-f differs from leader-e for now)
vim.keymap.set("v", "<Leader>F", "<Plug>(easymotion-bd-f)")
-- <Leader>f{char} to move to {char} in another screen
vim.keymap.set("n", "<Leader>F", "<Plug>(easymotion-overwin-f)")

-- s{char}{char} to move to {char}{char}
vim.keymap.set({"n", "v"}, "<Leader>E", "<Plug>(easymotion-overwin-f2)")

-- Move to line
vim.keymap.set("v", "<Leader>L", "<Plug>(easymotion-bd-jk)")
vim.keymap.set("n", "<Leader>L", "<Plug>(easymotion-overwin-line)")

-- Move to word
vim.keymap.set("v", "<Leader>w", "<Plug>(easymotion-bd-w)")
vim.keymap.set("n", "<Leader>w", "<Plug>(easymotion-overwin-w)")

-- hjkl easy navigation
vim.keymap.set({"n", "v"}, "<Leader>l", "<Plug>(easymotion-lineforward)")
vim.keymap.set({"n", "v"}, "<Leader>j", "<Plug>(easymotion-j)")
vim.keymap.set({"n", "v"}, "<Leader>k", "<Plug>(easymotion-k)")
vim.keymap.set({"n", "v"}, "<Leader>h", "<Plug>(easymotion-linebackward)")


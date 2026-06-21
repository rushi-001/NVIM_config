--- ---------------------------------------  Mode Keymaps ---------------------------------------
--- Map 'JJ' to <Esc> in insert mode
vim.keymap.set("i", "KK", "<Esc>", { desc = "Escape from insert mode" })

-- Map 'JJ' to <Esc> in visual mode
vim.keymap.set("v", "KK", "<Esc>", { desc = "Escape from visual mode" })

-- Map 'JJ' to <Esc> in command-line mode
vim.cmd([[cnoremap KK <Esc>]])

-- -----------------------------------------------------------------------------------------

-- --------------------------------------- Clipboard Keymaps ---------------------------------------
-- Map '<leader>y' to copy the text to computer clipboard
vim.keymap.set("n", "<leader>y", '"+y', { desc = "Yank line to system clipboard" })

-- -----------------------------------------------------------------------------------------

-- ---------------------------------------  Buffer Keymaps ---------------------------------------
-- Map '<Tab>' to go to the next buffer
vim.keymap.set("n", "<Tab>", ":bnext<CR>", { desc = "Next buffer" })

--  Map 'Shift+Tab' to go to the previous buffer
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", { desc = "Previous buffer" })

--  Map 'Ctrl+w' to close the current buffer
vim.keymap.set("n", "<C-w>", ":bd<CR>", { desc = "Close buffer" })

-- -----------------------------------------------------------------------------------------

-- --------------------------------------- Theme Switcher Keymaps ---------------------------------------
vim.keymap.set("n", "<leader>ut", "<cmd>CycleTheme<CR>", { desc = "Cycle Theme" })
-- -----------------------------------------------------------------------------------------

-- --------------------------------------- File/Path/nvim-tree Keymaps ---------------------------------------
-- Map '<leader>cp' to copy the absolute file path of the current file to the system clipboard
vim.keymap.set("n", "<leader>cp", function()
  vim.fn.setreg("+", vim.fn.expand("%:p"))
  print("Copied absolute path")
end, { desc = "Copy absolute path" })

-- Map '<leader>cfn' to copy just the file name of the current file to the system clipboard
vim.keymap.set("n", "<leader>cfn", function()
  vim.fn.setreg("+", vim.fn.expand("%:t"))
  print("Copied file name")
end, { desc = "Copy file name" })
-- -----------------------------------------------------------------------------------------

-- --------------------------------------- Other Keymaps ---------------------------------------

-- -----------------------------------------------------------------------------------------

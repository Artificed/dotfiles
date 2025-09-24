-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.keymap.set("i", "kj", "<Esc>", { noremap = true, silent = true })

vim.cmd([[command! W w]])

vim.keymap.set("n", "<leadercd", function()
  vim.diagnostic.open_float({ scope = "line", focusable = false })
end, { noremap = true, silent = true })

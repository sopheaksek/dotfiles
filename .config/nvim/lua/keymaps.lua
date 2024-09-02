local opts = {noremap = true}

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('i', 'jk', '<Esc>', opts)
vim.keymap.set('i', 'kj', '<Esc>', opts)

vim.keymap.set('n', '<C-a>', 'gg<S-v>G')


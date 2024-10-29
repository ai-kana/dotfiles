vim.g.mapleader = " "

vim.keymap.set('i', 'jj', '<esc>')

vim.api.nvim_set_keymap('n', 'nt', ':NERDTreeToggle<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', ' m', [[<cmd>lua vim.diagnostic.open_float({ scope = 'line', focusable = false })<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gR', '<Cmd>lua vim.lsp.buf.rename()<CR>', {noremap = true, silent = true})
vim.keymap.set("n", "ca", '<Cmd>lua vim.lsp.buf.code_action()<CR>')

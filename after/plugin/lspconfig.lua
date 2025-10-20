
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {buffer=bufnr})
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {buffer=bufnr})
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {buffer=bufnr})
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {buffer=bufnr})


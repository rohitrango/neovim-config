-- important to get feedback on what was just yanked
-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    if not vim.bo.binary and vim.bo.filetype ~= "diff" then
        vim.cmd([[%s/\s\+$//e]])
    end
  end,
  desc = "Remove trailing whitespace on save",
})


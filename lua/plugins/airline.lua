return {
    {
        'vim-airline/vim-airline',
        config = function()
            vim.g['airline#extensions#tabline#enabled'] = 1
            vim.g['airline_powerline_fonts'] = 1
            vim.g['airline#extensions#tabline#formatter'] = 'unique_tail'
        end,
    },
    {
        'vim-airline/vim-airline-themes',
        lazy = false,
    }
}

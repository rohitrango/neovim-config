return {
    {
    "neovim/nvim-lspconfig",
    config = function()
        vim.lsp.enable("pyright")
        vim.lsp.enable('clangd')
    end
    },
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
}


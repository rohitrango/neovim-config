return {
    {
    "neovim/nvim-lspconfig",
    dependencies = { 'saghen/blink.cmp' },
    config = function()
        local blinkcmp = require("blink.cmp")
        local capabilities = blinkcmp.get_lsp_capabilities()
        vim.lsp.config("pyright", {
            capabilities = capabilities
        })
        vim.lsp.config("clangd", {
            capabilities = capabilities
        })
        vim.lsp.config("texlab", {
            capabilities = capabilities
        })


        vim.lsp.enable("pyright")
        vim.lsp.enable('clangd')
        vim.lsp.enable('texlab')
    end
    },
}


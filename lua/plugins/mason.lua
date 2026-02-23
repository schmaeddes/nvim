return {
    {
        'williamboman/mason.nvim',
        config = function ()
            require("mason").setup()
        end
    },
    {
        'williamboman/mason-lspconfig.nvim',
        config = function ()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "gopls",
                    "gomod",
                    "lua_ls",
                    "marksman",
                    "ltex"
                }
            })
        end
    }
}

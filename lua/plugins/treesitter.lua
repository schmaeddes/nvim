return {
    {
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
        build = ":TSUpdate",
        config = function()
            -- require("nvim-treesitter").setup({
            --     ensure_installed = { "go" },
            --     auto_install = true,
            --     highlight = { enable = true },
            --     indent = { enable = true },
            -- })

            vim.api.nvim_create_autocmd("FileType", {
                -- pattern = { "go", "lua", "mod" },
                callback = function()
                    pcall(vim.treesitter.start)
                end,
            })
        end,
    },
}

return {
    {
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
        build = ":TSUpdate",
        config = function()

            vim.api.nvim_create_autocmd("FileType", {
                -- pattern = { "go", "lua", "mod" },
                callback = function()
                    pcall(vim.treesitter.start)
                end,
            })
        end,
    },
}

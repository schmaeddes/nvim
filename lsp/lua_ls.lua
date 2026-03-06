return {
    cmd = { "lua-language-server" },
    filetypes = { "lua" },
    root_markers = {
        ".git",
        ".luarc.json",
        ".luarc.jsonc",
    },
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
            },
            diagnostics = {
                globals = { "vim" },
            },
            Lua = {
                codeLens = { enable = true },
                hint = { enable = true, semicolon = "Disable" },
            },
            library = vim.api.nvim_get_runtime_file("", true), -- Neovim-Runtime einbinden
            checkThirdParty = false,                  -- verhindert nervige Popups
        },
    },
    single_file_support = true,
    log_level = vim.lsp.protocol.MessageType.Warning,
}

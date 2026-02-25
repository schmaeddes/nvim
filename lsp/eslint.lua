return {
    cmd = { "typescript-language-server", "--stdio" },
    filetypes = { "typescript" },
    root_markers = {
        ".git",
        "package.json",
        "package-lock.json",
        "tsconfig.json",
    },
    single_file_support = true,
    log_level = vim.lsp.protocol.MessageType.Warning,
}

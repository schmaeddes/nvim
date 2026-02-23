return {
    cmd = { "vscode-eslint-language-server", "--stdio" },
    filetypes = { "tsx" },
    root_markers = {
        ".git",
        "package.json",
        "package-lock.json",
        "tsconfig.json",
    },
    single_file_support = true,
    log_level = vim.lsp.protocol.MessageType.Warning,
}

-- Set Mapleader
vim.g.mapleader = " "

-- Open netrw
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- Refactoring
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)

-- Format code according to lsp
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format)

-- Show Code Actions
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)

vim.keymap.set("v", "<C-_>", "gc", { remap = true })
vim.keymap.set("n", "<C-_>", "gcc", { remap = true })

---- Plugin relevated remaps ----

-- NvimTree
local nvimTreeApi = require("nvim-tree.api")
vim.keymap.set("n", "<C-n>", nvimTreeApi.tree.toggle)

-- Telescope
local telescopeBuiltin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", telescopeBuiltin.find_files)
vim.keymap.set("n", "<leader>fi", telescopeBuiltin.git_files)
vim.keymap.set("n", "<leader>r", telescopeBuiltin.lsp_references)
vim.keymap.set("n", "<leader>d", telescopeBuiltin.diagnostics)

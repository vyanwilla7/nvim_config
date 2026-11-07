return {
    "neovim/nvim-lspconfig",

    config = function()
        vim.lsp.config("basedpyright", {
            settings = {
                basedpyright = {
                    analysis = {
                        typeCheckingMode = "standard",
                        diagnosticMode = "workspace",
                        autoSearchPaths = true,
                        useLibraryCodeForTypes = true,
                    },
                },
            },
        })

        vim.lsp.enable("basedpyright")
    end,
}

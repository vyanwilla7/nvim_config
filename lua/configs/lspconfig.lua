require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html", "cssls",
  "basedpyright", "clangd",
  "jsonls", "bashls",
  "lua_ls", "jdtls"
}


vim.lsp.enable(servers)
-- read :h vim.lsp.config for changing options of lsp servers 

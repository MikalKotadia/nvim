local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local diagnostic = require "vim.diagnostic"
local lspconfig = require "lspconfig"
local servers = require ("custom.configs.overrides").lsp_servers

diagnostic.config {
    update_in_insert = true,
}

for _, lsp in ipairs(servers) do
    local setup_table =
        {
            on_attach = on_attach,
            capabilities = capabilities,
        }
    lspconfig[lsp].setup(setup_table)

end

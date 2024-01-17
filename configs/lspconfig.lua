local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local diagnostic = require "vim.diagnostic"

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers =
{ "html", "cssls", "tsserver", "clangd", "pyright", "marksman", "texlab", "intelephense", "jdtls" }

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

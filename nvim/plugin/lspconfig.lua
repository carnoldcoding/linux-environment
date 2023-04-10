local nvim_lsp = require('lspconfig')
local servers = { 'tsserver', 'html', 'cssls' }

local capabilities = require('cmp_nvim_lsp').default_capabilities()

for _, lsp in ipairs(servers) do
	nvim_lsp[lsp].setup{
        capabilities = capabilities
	}
end

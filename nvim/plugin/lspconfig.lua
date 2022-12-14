local nvim_lsp = require('lspconfig')
local servers = { 'tsserver' }

for _, lsp in ipairs(servers) do
	nvim_lsp[lsp].setup{
		on_attach = on_attach
	}
end

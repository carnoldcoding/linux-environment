require('bufferline').setup {
	options = {
		mode = "buffers",
		separator_style = "thin",
		diagnostics = "nvim_lsp"
	}
}

--Keybinds
vim.cmd[[
	nnoremap <silent><TAB> :BufferLineCycleNext<CR>
	nnoremap <silent><S-TAB> :BufferLineCyclePrev<CR>
]]

require('bufferline').setup {
	options = {
		mode = "buffers",
		separator_style = "thin",
		diagnostics = "nvim_lsp",
        buffer_close_icon = '',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = ''
	}
}

--Remap Function
function map(mode, keys, action, opts)
	local options = { noremap = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, keys, action, options)
end

--Insert Mode
map('i', 'jk', '<ESC>')

--Normal Mode
----NvimTree Binds
map('n', '<leader>e', ':NvimTreeToggle<CR>') --<CR> is Character Return a.k.a 'enter'
----Window Movement
map('n', '<leader>h', '<C-w>h')
map('n', '<leader>l', '<C-w>l')
map('n', '<leader>j', '<C-w>j')
map('n', '<leader>k', '<C-w>k')

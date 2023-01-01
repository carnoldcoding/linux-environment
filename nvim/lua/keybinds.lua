--Remap Function
function map(mode, keys, action, descr, opts)
	local options = { noremap = true, desc = descr }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, keys, action, options)
end

--Insert Mode
map('i', 'jk', '<ESC>', 'Insert Mode')

--Normal Mode
map('n', '<leader>q', ':q<cr>', 'Quit')
map('n', '<leader>Q', ':wq<cr>', 'Save & Quit')
map('n', '<leader>w', ':w<cr>', 'Save')
map('n', '<leader>x', ':bd<cr>', 'Closer Buffer')

----NvimTree Binds
map('n', '<leader>e', ':NvimTreeToggle<CR>', 'Toggle Tree') 

----Window Movement
map('n', '<leader>h', '<C-w>h', 'Switch to Left Buffer')
map('n', '<leader>l', '<C-w>l', 'Switch to Right Buffer')
map('n', '<leader>j', '<C-w>j', 'Switch to Bottom Buffer')
map('n', '<leader>k', '<C-w>k', 'Switch to Top Buffer')

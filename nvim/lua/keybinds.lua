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
map('n', '<leader>d', ':bd<cr>', 'Delete Buffer')

----Bufferline Binds
map('n', '<TAB>', ':BufferLineCycleNext<CR>', 'Next Buffer')
map('n', '<S-TAB>', ':BufferLineCyclePrev<CR>', 'Last Buffer')

----Window Movement
map('n', '<leader>h', '<C-w>h', 'Switch to Left Buffer')
map('n', '<leader>l', '<C-w>l', 'Switch to Right Buffer')
map('n', '<leader>j', '<C-w>j', 'Switch to Bottom Buffer')
map('n', '<leader>k', '<C-w>k', 'Switch to Top Buffer')

--Telescope Binds
map('n', '<leader>ff', ':Telescope find_files<cr>', 'Open Telescope File Finder')
map('n', '<leader>fg', ':Telescope live_grep<cr>', 'Open Telescope Live Grep')

--LSP Saga
map('n', '<leader>t', ':Lspsaga term_toggle<cr>', 'Open Floating Terminal')
map('n', '<leader>gd', ':Lspsaga peek_definition<cr>', 'Open Buffer for Definition Source')

--Nvim Tree
map('n', '<leader>e', ':NvimTreeToggle<cr>', 'Toggle Nvim Tree')

--Packer
map('n', '<leader>ps', ':PackerSync<cr>', 'Sync Packer Plugins')

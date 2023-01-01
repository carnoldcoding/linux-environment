require('which-key').setup{}

local wk = require('which-key')
local mappings = {
	q = {':q<cr>', 'Quit'},
	Q = {':wq<cr>', 'Save & Quit'},
	w = {':w<cr>', 'Save'},
	x = {':bd<cr>', 'Close Buffer'}
}
local opts = {prefix = '<leader>'}
wk.register(mappings, opts)

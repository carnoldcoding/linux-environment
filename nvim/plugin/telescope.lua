local actions = require('telescope.actions');

require('telescope').setup{
    defaults = {
        initial_mode = "insert",
        mappings = {
            i = {
                ["<C-d>"] = actions.close
            },
            n = {
                ["<C-d>"] = actions.close
            }
        }
    },
}

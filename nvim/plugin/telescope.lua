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
    extensions = {
        file_browser = {
            hijack_netrw = true,
            initial_mode = "normal",
            mappings = {
                ["i"] = {

                },
                ["n"] = {

                }
            }
        }
    }
}

--Load file browser extension/attach it to Telescope
require("telescope").load_extension "file_browser"

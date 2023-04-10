require('dashboard').setup({
    theme = 'hyper', 
    config = {
        shortcut = {
            {desc="Update", group="featured", key = 'u', action = ':PackerSync'},
            {desc="Files", group="featured", key = 'f', action = ':Telescope find_files'},
        },
        week_header = {
            enable = true
        },
        packages = {enable = true},
        footer = {"The Sculptor and the Marble"}
    },
})

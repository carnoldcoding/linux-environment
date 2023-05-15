require('dashboard').setup({
    theme = 'hyper', 
    config = {
        shortcut = {
            {desc="Update", group="featured", key = 'u', action = ':PackerSync'},
            {desc="Find File", group="featured", key = 'f', action = ':Telescope find_files'},
            {desc="File Tree", group="featured", key = 'e', action=':NvimTreeToggle'}
        },
        week_header = {
            enable = true
        },
        packages = {enable = true},
        footer = {"The Sculptor and the Marble"}
    },
})

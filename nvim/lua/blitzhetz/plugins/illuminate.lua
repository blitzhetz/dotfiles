return {
    "RRethy/vim-illuminate",
    config = function()
        local illuminate = require("illuminate")

        illuminate.configure({
            under_cursor = true,
            filetypes_denylist = {
                "Outline",
                "TelescopePrompt",
                "harpoon",
                "neo-tree",
                "dbui",
            },
        })
    end,
}

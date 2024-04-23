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
            },
        })

        vim.keymap.set("n", "<leader>]", function()
            illuminate.goto_next_reference()
            vim.api.nvim_feedkeys("zz", "n", false)
        end)

        vim.keymap.set("n", "<leader>[", function()
            illuminate.goto_prev_reference()
            vim.api.nvim_feedkeys("zz", "n", false)
        end)
    end,
}

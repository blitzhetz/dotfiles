return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require("neo-tree").setup({
            popup_border_style = "rounded",
            filesystem = {
                filtered_items = {
                    hide_dotfiles = false,
                    hide_by_name = {
                        "node_modules",
                        ".git",
                    },
                },
                bind_to_cwd = false,
                follow_current_file = { enabled = true },
                use_libuv_file_watcher = true,
            },
        })

        vim.keymap.set("n", "<leader>ee", "<cmd>Neotree toggle left<CR>")
        vim.keymap.set("n", "<leader>ef", "<cmd>Neotree focus<CR>")
    end,
}

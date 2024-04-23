return {
    "nvim-telescope/telescope.nvim",
    even = "VimEnter",
    version = false,
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        "nvim-telescope/telescope-ui-select.nvim",
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local actions = require("telescope.actions")
        local builtin = require("telescope.builtin")

        require("telescope").setup({
            defaults = {
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous,
                        ["<C-j>"] = actions.move_selection_next,
                        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                    },
                },
                file_ignore_patterns = {
                    ".git/",
                    ".settings/",
                    ".metadata/",
                    "target/",
                    ".class$",
                    "node_modules/",
                    "package-lock.json",
                    ".next",
                },
                hidden = true,
            },
            extensions = {
                fzf = {
                    fuzzy = true,
                    override_generic_sorter = true,
                    override_file_sorter = true,
                    case_mode = "smart_case",
                },
                ["ui-select"] = {
                    require("telescope.themes").get_dropdown(),
                },
            },
        })

        pcall(require("telescope").load_extension, "fzf")
        pcall(require("telescope").load_extension, "ui-select")

        vim.keymap.set("n", "<leader>/", function()
            builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
                previewer = false,
            }))
        end)

        vim.keymap.set("n", "<leader>:", "<cmd>Telescope command_history<cr>")

        vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>")

        vim.keymap.set("n", "<leader>ff", function()
            builtin.find_files({})
        end)

        vim.keymap.set("n", "<leader>fg", function()
            builtin.live_grep()
        end)

        vim.keymap.set("n", "<leader>fh", function()
            builtin.help_tags()
        end)

        vim.keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>")
        vim.keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>")
    end,
}

return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                -- transparent_background = true,
                -- color_overrides = {
                --     macchiato = {
                --         base = "#111111",
                --         mantle = "#111111",
                --         crust = "#111111",
                -- },
                -- },
                integrations = {
                    cmp = true,
                    gitsigns = true,
                    harpoon = true,
                    illuminate = true,
                    symbols_outline = true,
                    mason = true,
                    markdown = true,
                    native_lsp = {
                        enabled = true,
                        underlines = {
                            errors = { "undercurl" },
                            hints = { "undercurl" },
                            warnings = { "undercurl" },
                            information = { "undercurl" },
                        },
                    },
                    telescope = true,
                    treesitter = true,
                    nvimtree = true,
                },
            })

            vim.cmd.colorscheme("catppuccin-macchiato")
        end,
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require("rose-pine").setup({
                disable_background = true,
            })

            -- vim.cmd("colorscheme rose-pine")
        end,
    },
}

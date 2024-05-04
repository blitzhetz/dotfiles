return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = false,
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                transparent_background = true,
                integrations = {
                    barbecue = {
                        alt_background = true,
                    },
                    cmp = true,
                    gitsigns = true,
                    illuminate = true,
                    indent_blankline = { enabled = true },
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
                    neotree = true,
                    noice = true,
                    notify = true,
                    semantic_tokens = true,
                    harpoon = true,
                    symbols_outline = true,
                    telescope = true,
                    treesitter = true,
                },
            })

            vim.cmd.colorscheme("catppuccin-macchiato")
        end,
    },
    {
        "craftzdog/solarized-osaka.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            ---@diagnostic disable-next-line: missing-fields
            require("solarized-osaka").setup({
                transparent = true,
                styles = {
                    floats = "transparent",
                },
            })

            -- vim.cmd([[colorscheme solarized-osaka]])
        end,
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        lazy = false,
        config = function()
            require("rose-pine").setup({
                disable_background = true,
            })

            -- vim.cmd("colorscheme rose-pine")
        end,
    },
}

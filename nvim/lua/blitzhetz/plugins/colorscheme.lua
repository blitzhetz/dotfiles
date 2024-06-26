return {
    {
        "tjdevries/colorbuddy.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("gruvtty")
        end,
    },
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

            -- vim.cmd.colorscheme("catppuccin-macchiato")
        end,
    },
}

return {
    "nvim-treesitter/nvim-treesitter",
    version = false,
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })
    end,
    event = { "VeryLazy" },
    dependencies = {
        "windwp/nvim-ts-autotag",
        "windwp/nvim-autopairs",
    },
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "html",
                "xml",
                "css",
                "javascript",
                "typescript",
                "tsx",
                "java",
                "jsdoc",
                "json",
                "jsonc",
                "php",
                "python",
                "lua",
                "markdown",
            },
            ignore_install = {},
            modules = {},
            auto_install = true,
            sync_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = true,
            },
            indent = {
                enable = true,
            },
            autopairs = {
                enable = true,
            },
            autotag = {
                enable = true,
            },
        })

        vim.treesitter.language.register("markdown", "mdx")
    end,
}

return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
        require("mason").setup({
            ui = {
                border = "rounded",
            },
        })

        require("mason-lspconfig").setup({
            ensure_installed = {
                "tsserver",
                "jdtls",
                "lemminx",
                "rust_analyzer",
                "pyright",
                "lua_ls",
                "intelephense",
                "html",
                "emmet_ls",
                "cssls",
                "tailwindcss",
                "eslint",
            },
            automatic_installation = true,
        })

        require("mason-tool-installer").setup({
            ensure_installed = {
                "prettier",
                "stylua",
                "isort",
                "black",
                "flake8",
                "php-cs-fixer",
            },
        })
    end,
}

return {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    version = "*",
    config = function()
        require("bufferline").setup({
            options = {
                mode = "tabs",
                always_show_bufferline = false,
                separator_style = "thin",
            },
        })
    end,
}

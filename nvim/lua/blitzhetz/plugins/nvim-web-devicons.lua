return {
    "nvim-tree/nvim-web-devicons",
    config = function()
        require("nvim-web-devicons").setup({
            -- override_by_extension = {
            --   ["java"] = {
            --     icon = "",
            --     color = "#FF0000",
            --     name = "Java",
            --   },
            -- },
        })
    end,
}

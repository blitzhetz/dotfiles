return {
    "eatgrass/maven.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
        require("maven").setup({
            executable = "./mvnw",
        })
    end,
}

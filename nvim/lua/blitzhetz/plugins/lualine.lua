return {
    "nvim-lualine/lualine.nvim",
    enabled = true,
    lazy = false,
    event = { "BufReadPost", "BufNewFile" },
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local harpoon = require("harpoon.mark")

        local function truncate_branch_name(branch)
            if not branch or branch == "" then
                return ""
            end

            local _, _, ticket_number = string.find(branch, "skdillon/sko%-(%d+)%-")

            if ticket_number then
                return "sko-" .. ticket_number
            else
                return branch
            end
        end

        local function harpoon_component()
            local total_marks = harpoon.get_length()

            if total_marks == 0 then
                return ""
            end

            local current_mark = "—"

            local mark_idx = harpoon.get_current_index()
            if mark_idx ~= nil then
                current_mark = tostring(mark_idx)
            end

            return string.format("󱡅 %s/%d", current_mark, total_marks)
        end

        require("lualine").setup({
            options = {
                theme = "auto",
                globalstatus = true,
                component_separators = { left = "", right = "" },
                section_separators = { left = "", right = "" },
            },
            sections = {
                lualine_b = {
                    { "branch", icon = "", fmt = truncate_branch_name },
                    harpoon_component,
                    "diff",
                    "diagnostics",
                },
                lualine_c = {
                    { "filename", path = 1, file_status = true },
                },
                lualine_x = {
                    "filetype",
                },
            },
        })
    end,
}

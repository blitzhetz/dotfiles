vim.api.nvim_create_autocmd("TextYankPost", {
    group = vim.api.nvim_create_augroup("highlight_yank", { clear = true }),
    pattern = "*",
    callback = function()
        vim.highlight.on_yank({
            timeout = 50,
            visual = true,
        })
    end,
})

vim.api.nvim_create_autocmd("BufEnter", { command = [[set formatoptions-=cro]] })

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-a>", "gg<S-v>G")
vim.keymap.set("n", "<leader>sr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "te", "<cmd>tabnew<CR>")
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>")
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>")
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>")
vim.keymap.set("n", "ss", ":split<Return><C-w>w")
vim.keymap.set("n", "sv", ":vsplit<Return><C-w>w")
vim.keymap.set("n", "<leader>te", ":split | te<CR>i")
vim.keymap.set("n", "<leader>ch", ":nohlsearch<CR>")

-- Harpoon
vim.keymap.set("n", "<leader>ho", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>")
vim.keymap.set("n", "<leader>ha", "<cmd>lua require('harpoon.mark').add_file()<cr>")
vim.keymap.set("n", "<leader>hr", "<cmd>lua require('harpoon.mark').rm_file()<cr>")
vim.keymap.set("n", "<leader>hc", "<cmd>lua require('harpoon.mark').clear_all()<cr>")
vim.keymap.set("n", "<leader>1", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>")
vim.keymap.set("n", "<leader>2", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>")
vim.keymap.set("n", "<leader>3", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>")
vim.keymap.set("n", "<leader>4", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>")
vim.keymap.set("n", "<leader>5", "<cmd>lua require('harpoon.ui').nav_file(5)<cr>")

-- Illuminate
vim.keymap.set("n", "<leader>]", function()
    require("illuminate").goto_next_reference()
    vim.api.nvim_feedkeys("zz", "n", false)
end)

vim.keymap.set("n", "<leader>[", function()
    require("illuminate").goto_prev_reference()
    vim.api.nvim_feedkeys("zz", "n", false)
end)

-- Neo-tree
vim.keymap.set("n", "<leader>ee", "<cmd>Neotree toggle left<CR>")
vim.keymap.set("n", "<leader>ef", "<cmd>Neotree focus<CR>")

-- Dap
vim.keymap.set("n", "<leader>bb", "<cmd>lua require'dap'.toggle_breakpoint()<cr>")
vim.keymap.set("n", "<leader>bc", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>")
vim.keymap.set(
    "n",
    "<leader>bl",
    "<cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<cr>"
)
vim.keymap.set("n", "<leader>br", "<cmd>lua require'dap'.clear_breakpoints()<cr>")
vim.keymap.set("n", "<leader>ba", "<cmd>Telescope dap list_breakpoints<cr>")
vim.keymap.set("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>")
vim.keymap.set("n", "<leader>dj", "<cmd>lua require'dap'.step_over()<cr>")
vim.keymap.set("n", "<leader>dk", "<cmd>lua require'dap'.step_into()<cr>")
vim.keymap.set("n", "<leader>do", "<cmd>lua require'dap'.step_out()<cr>")
vim.keymap.set("n", "<leader>dd", function()
    require("dap").disconnect()
    require("dapui").close()
end)
vim.keymap.set("n", "<leader>dt", function()
    require("dap").terminate()
    require("dapui").close()
end)
vim.keymap.set("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>")
vim.keymap.set("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>")
vim.keymap.set("n", "<leader>di", function()
    require("dap.ui.widgets").hover()
end)
vim.keymap.set("n", "<leader>d?", function()
    local widgets = require("dap.ui.widgets")
    widgets.centered_float(widgets.scopes)
end)
vim.keymap.set("n", "<leader>df", "<cmd>Telescope dap frames<cr>")
vim.keymap.set("n", "<leader>dh", "<cmd>Telescope dap commands<cr>")
vim.keymap.set("n", "<leader>de", function()
    require("telescope.builtin").diagnostics({ default_text = ":E:" })
end)

-- Symbols outline
vim.keymap.set("n", "<leader>so", ":SymbolsOutline<cr>")

-- Telescope
local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>/", function()
    builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
        previewer = false,
    }))
end)

vim.keymap.set("n", "<leader>:", "<cmd>Telescope command_history<cr>")

vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>")

vim.keymap.set("n", "<leader>ff", function()
    builtin.find_files({})
end)

vim.keymap.set("n", "<leader>fg", function()
    builtin.live_grep()
end)

vim.keymap.set("n", "<leader>fh", function()
    builtin.help_tags()
end)

vim.keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>")
vim.keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>")

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.guicursor =
    "n-v-c-i:block,ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"
vim.opt.cursorline = true
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.wrap = false

vim.opt.termguicolors = true
vim.opt.colorcolumn = "90"
vim.opt.signcolumn = "yes"
vim.opt.pumheight = 10
vim.opt.showmode = false

vim.opt.completeopt = { "menuone", "noselect" }
vim.opt.list = true
vim.opt.listchars:append("eol:󱞣,space:·")
vim.opt.showbreak = "↳⋅"
vim.opt.conceallevel = 1

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true

vim.opt.swapfile = false
vim.opt.hidden = true
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

vim.opt.iskeyword:append("-,_")
vim.opt.isfname:append("@-@")

vim.opt.scrolloff = 10
vim.opt.lazyredraw = true
vim.opt.updatetime = 50

vim.g.loaded_gzip = 1
vim.g.loaded_zip = 1
vim.g.loaded_zipPlugin = 1
vim.g.loaded_tar = 1
vim.g.loaded_tarPlugin = 1
vim.g.loaded_getscript = 1
vim.g.loaded_getscriptPlugin = 1
vim.g.loaded_vimball = 1
vim.g.loaded_vimballPlugin = 1
vim.g.loaded_2html_plugin = 1
vim.g.loaded_logiPat = 1
vim.g.loaded_rrhelper = 1
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

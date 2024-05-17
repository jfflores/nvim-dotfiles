vim.g.python3_host_prog = os.getenv("HOME") .. "/.pyenv/shims/python3"
-- vim.g.black_virtualenv = os.getenv("HOME") .. '/.local/share/nvim/black'

vim.g.mapleader = " "
vim.g.maplocalleader = '\\'

vim.opt.guicursor = ""

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.ignorecase = true
vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.smartcase = true

vim.opt.cursorline = true                              -- highlight current line
vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.colorcolumn = "80"

vim.opt.splitbelow = true                    -- open horizontal splits below current window
vim.opt.splitright = true                    -- open vertical splits to the right of the current window

vim.opt.lazyredraw = true                              -- don't bother updating screen during macro playback

vim.opt.foldlevelstart = 99                                -- start unfolded
vim.opt.foldmethod = 'indent'                          -- not as cool as syntax, but faster

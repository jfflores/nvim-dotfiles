vim.keymap.set("n", "<localleader>t", vim.cmd.Ex)

-- move visual selection up/down, auto-indent
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep cursor centered when jumping in file
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- no colon for you!
vim.keymap.set("n", '<Leader>q', '<cmd>quit<CR>')
vim.keymap.set("n", '<Leader>w', '<cmd>write<CR>')
vim.keymap.set("n", '<Leader>x', '<cmd>xit<CR>')

-- Toggle fold at current position.
vim.keymap.set("n", '<Tab>', 'za')

-- Avoid unintentional switches to Ex mode.
vim.keymap.set("n", 'Q', '<Nop>')

-- jump between splits without prefix <C-w>
vim.keymap.set("n", '<C-h>', '<C-w>h')
vim.keymap.set("n", '<C-j>', '<C-w>j')
vim.keymap.set("n", '<C-k>', '<C-w>k')
vim.keymap.set("n", '<C-l>', '<C-w>l')

-- asbjornHaland
-- copy to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- delete to black hole register
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- move through quickfix list
vim.keymap.set("n", '<Up>', '<cmd>cprevious<CR>', {silent = true})
vim.keymap.set("n", '<Down>', '<cmd>cnext<CR>', {silent = true})
vim.keymap.set("n", '<S-Up>', '<cmd>lprevious<CR>', {silent = true})
vim.keymap.set("n", '<S-Down>', '<cmd>lnext<CR>', {silent = true})

vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- toggle background color
vim.keymap.set("n", "<leader>bc", function ()
    local background_color = vim.api.nvim_get_option_value("background", {})
    if background_color == 'dark' then
        vim.api.nvim_set_option_value("background", "light", {})
    else
        vim.api.nvim_set_option_value("background", "dark", {})
    end
end)

-- toggle tree sitter context
vim.keymap.set("n", "<leader>tc", '<cmd>TSContextToggle<CR>', {silent=true})

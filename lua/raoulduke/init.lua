require("raoulduke.set")
require("raoulduke.remap")
require("raoulduke.packer")

local augroup = vim.api.nvim_create_augroup
local RaoulDukeGroup = augroup('RaoulDuke', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 70,
        })
    end,
})

autocmd({"BufWritePre"}, {
    group = RaoulDukeGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

autocmd({ "BufReadPre" }, {
  callback = function()
    local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf()))
    if ok and stats and (stats.size > 1000000) then
      vim.b.large_buf = true
      vim.cmd("syntax off")
      vim.opt_local.foldmethod = "manual"
    else
      vim.b.large_buf = false
    end
  end,
  group = RaoulDukeGroup,
  pattern = "*",
})

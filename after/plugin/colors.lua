require('rose-pine').setup({
    variant = 'auto',
	--- @usage 'main' | 'moon'
	dark_variant = 'main',
    disable_italics = true,
})

require('onedark').setup {
    style = 'warmer'
}

require('catppuccin').setup {
    flavour = 'latte',
}

require('github-theme')

function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

-- ColorMyPencils("github_light")
-- ColorMyPencils("catppuccin")
ColorMyPencils("onedark")
-- ColorMyPencils("rose-pine")
-- ColorMyPencils()

vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

-- Background opacity: 0.85 = 85% opaque (winblend 0-100, 0=opaque 100=transparent)
vim.opt.winblend = 15
vim.opt.pumblend = 15

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

-- Make backgrounds transparent so terminal opacity shows through
local function set_transparent_backgrounds()
	local groups = {
		"Normal", "NormalFloat", "NormalNC", "LineNr", "SignColumn",
		"EndOfBuffer", "CursorLine", "CursorLineNr", "StatusLine", "StatusLineNC",
		"TabLine", "TabLineFill", "Folded", "FoldColumn", "Pmenu", "PmenuSel",
		"FloatBorder", "WinSeparator", "VertSplit", "ColorColumn",
	}
	for _, group in ipairs(groups) do
		vim.api.nvim_set_hl(0, group, { bg = "none" })
	end
end

vim.api.nvim_create_autocmd("ColorScheme", {
	callback = set_transparent_backgrounds,
})
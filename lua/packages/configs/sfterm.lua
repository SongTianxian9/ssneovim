require'FTerm'.setup({
	ft = 'FTerm',
	cmd = os.getenv('SHELL'),
	border = 'double',
	auto_close = false,
	hl = 'Normal',
	-- Transparency of the floating window. See `:h winblend`
	blend = 0,
	-- The value for each field should be between `0` and `1`
	dimensions = {
		height = 0.8, -- Height of the terminal window
		width = 0.8, -- Width of the terminal window
		x = 0.5, -- X axis of the terminal window
		y = 0.5, -- Y axis of the terminal window
	},
	-- Callback invoked when the terminal exits.
	-- See `:h jobstart-option`
	on_exit = nil,
	-- Callback invoked when the terminal emits stdout data.
	-- See `:h jobstart-options`
	on_stdout = nil,
	-- Callback invoked when the terminal emits stderr data.
	-- See `:h jobstart-options`
	on_stderr = nil,
})

-- Example keybindings
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<M-f>', '<CMD>lua require("FTerm").toggle()<CR>', opts)
map('t', '<M-f>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', opts)
map('t', '<M-e>', '<C-\\><C-n><CMD>lua require("FTerm").exit()<CR>', opts)
map('t', '<M-c>', '<C-\\><C-n><CMD>lua require("FTerm").close()<CR>', opts)

map('n', '<M-r>', '<CMD>lua require("FTerm").run({"gcc -Wall -Werror -pedantic -std=c89 ", vim.api.nvim_buf_get_name(0)--[[ vim.fn.expand("%:p") ]]," -o ", vim.fn.expand("%:p:r"),  " && ", vim.fn.expand("%:p:r") })<CR>', opts)

local fterm = require("FTerm")

local btop = fterm:new({
	ft = 'fterm_btop',
	cmd = "btop"
})

 -- Use this to toggle btop in a floating terminal
function _G.__fterm_btop()
    btop:toggle()
end

local gitui = fterm:new({
	ft = 'fterm_gitui', -- You can also override the default filetype, if you want
	cmd = "gitui",
	dimensions = {
		height = 0.9,
		width = 0.9
	}
})

 -- Use this to toggle gitui in a floating terminal
function _G.__fterm_gitui()
	gitui:toggle()
end

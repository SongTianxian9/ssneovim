-- vim: foldmethod=marker
-- 导入vim{{{
local o = vim.opt
local g = vim.g
--}}}

---------------------------------------------------------------------------
-- 一般选项 local buffer window ...
--λλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλ
--
o.termguicolors = true
o.history = 10000
o.number = true
o.relativenumber = true
o.incsearch = true
o.hls = true
o.ignorecase = true
o.smartcase = true
o.belloff = "all"
o.smarttab = true
o.autoindent = true
o.smartindent = true
o.shiftround = true
-- o.expandtab = true
-- o.shiftwidth = 8
-- o.softtabstop = 8
o.tabstop = 8
o.splitbelow = true
o.splitright = true
o.scrolloff = 10
o.textwidth = 80
o.hidden = true
o.autochdir = true
o.whichwrap = "b,s,<,>,h,l"
o.completeopt = {"menu", "menuone", "noselect"}
o.mouse = "a"
o.shortmess:append({ I = true })
o.clipboard:append({ unnamedplus = true })
vim.cmd[[
set guifont=JetBrainsMono\ Nerd\ Font:h12
set clipboard+=unnamedplus
]]


---------------------------------------------------------------------------
-- 全局选项 global
--λλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλ
--
-- g.colorscheme = "onedark"
g.mapleader = ";"

g.neovide_cursor_vxf_mode = "railgun"

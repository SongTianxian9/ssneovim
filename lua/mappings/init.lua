-- vim: foldmethod=marker
-- {{{
local map = vim.api.nvim_set_keymap
local mn = {noremap = true}
local mns = {noremap = true, silent = true}
--}}}

---------------------------------------------------------------------------
--λλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλλ
--
-- 搜索跳转总是定位到中间
map('n', 'n', 'nzz', mn)
map('n', 'N', 'Nzz', mn)
-- 插入模式像emacs一样的前进后退和行首行尾
map('i', '<C-h>', '<Left>', mn)
map('i', '<C-l>', '<Right>', mn)
map('i', '<C-a>', '<Home>', mn)
map('i', '<C-e>', '<End>', mn)
-- 更方便的窗口切换
map('n','<C-h>', '<C-w>h', mn)
map('n','<C-l>', '<C-w>l', mn)
map('n','<C-j>', '<C-w>j', mn)
map('n','<C-k>', '<C-w>k', mn)
-- 更方便的缓冲区切换
map('n', '<Leader>x', ':bd<CR>', mns)
map('n', '<Leader>s', ':w<CR>', mns)
map('n', '<Tab>', ':bn<CR>', mns)
map('n', '<S-Tab>', ':bp<CR>', mns)

-- Hop 插件，快速跳转
map('n', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
map('n', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})
map('o', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, inclusive_jump = true })<cr>", {})
map('o', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, inclusive_jump = true })<cr>", {})
map('', 't', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
map('', 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})
map('n', '<Leader><Leader>hh', "<cmd>lua require'hop'.hint_char1()<CR>", mn)
map('n', '<Leader><Leader>hl', "<cmd>lua require'hop'.hint_line_start()<CR>", mn)


-- 文件浏览
map('n', '<C-n>', ':NvimTreeToggle<CR>', mns)
map('n', '<C-s>', ':SymbolsOutline<CR>', mns)
map('n', '<leader>v', ':Vista!!<CR>', mns)

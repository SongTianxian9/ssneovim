-- 只高亮当前窗口
vim.cmd([[
augroup CursorLineOnlyInActiveWindow
        autocmd!
        autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
        autocmd WinLeave * setlocal nocursorline
augroup END
]])

-- 打开文件时回到最后停留的地方
vim.cmd([[
augroup RetureLastEditPosition
        autocmd!
        autocmd BufReadPost *
                \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
                \ |   exe "normal! g`\"zz"
                \ | endif
augroup END
]])

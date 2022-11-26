call plug#begin()
" Any valid git URL is allowed
Plug 'https://github.com/jiangmiao/auto-pairs.git'
Plug 'https://github.com/lsdr/monokai.git'
call plug#end()

set guifont=Source_Code_Pro:h14
set number
set ts=4
set sw=4
set smartindent
set backspace=indent,eol,start
set scrolloff=10
au GUIEnter * simalt ~x
syntax enable
colorscheme monokai

cd C:\Users\prona\Desktop\cp

autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++14 % -o %:r -Wl,--stack,268435456<CR><Enter>
autocmd filetype cpp nnoremap <F10> :!%:r<CR><Enter>

set guioptions -=T
set belloff=all

" Status Line Custom
let g:currentmode={
    \ 'n'  : 'Normal',
    \ 'no' : 'Normal·Operator Pending',
    \ 'v'  : 'Visual',
    \ 'V'  : 'V·Line',
    \ '^V' : 'V·Block',
    \ 's'  : 'Select',
    \ 'S'  : 'S·Line',
    \ '^S' : 'S·Block',
    \ 'i'  : 'Insert',
    \ 'R'  : 'Replace',
    \ 'Rv' : 'V·Replace',
    \ 'c'  : 'Command',
    \ 'cv' : 'Vim Ex',
    \ 'ce' : 'Ex',
    \ 'r'  : 'Prompt',
    \ 'rm' : 'More',
    \ 'r?' : 'Confirm',
    \ '!'  : 'Shell',
    \ 't'  : 'Terminal'
    \}

set laststatus=2
set noshowmode
set statusline=
set statusline+=%0*\ %n\                                 " Buffer number
set statusline+=%1*\ %<%F%m%r%h%w\                       " File path, modified, readonly, helpfile, preview
set statusline+=%3*│                                     " Separator
set statusline+=%2*\ %Y\                                 " FileType
set statusline+=%3*│                                     " Separator
set statusline+=%2*\ %{''.(&fenc!=''?&fenc:&enc).''}     " Encoding
set statusline+=\ (%{&ff})                               " FileFormat (dos/unix..)
set statusline+=%=                                       " Right Side
set statusline+=%2*\ col:\ %02v\                         " Colomn number
set statusline+=%3*│                                     " Separator
set statusline+=%1*\ ln:\ %02l/%L\ (%3p%%)\              " Line number / total lines, percentage of document
set statusline+=%0*\ %{toupper(g:currentmode[mode()])}\  " The current mode

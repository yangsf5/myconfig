" sheppard 2011-5-3
" for linux os

call pathogen#infect()

set nocompatible

set autoindent
set smartindent
set cindent
set wrap

set magic
set smarttab

colorscheme torte

"line number
set nu
 
"show files when you use command sp or vps.
set wildmenu

"high light search
set hlsearch

filetype plugin on
filetype indent on
syntax on

au BufRead,BufNewFile *.go set filetype=go
au BufRead,BufNewFile *.php set filetype=php
au BufRead,BufNewFile *.html set filetype=html
au BufRead,BufNewFile *.tpl set filetype=html

if has("autocmd") 
    "expandtab: change tab to space
    autocmd FileType c,cpp,python setlocal ts=4 sts=4 sw=4 expandtab 
    autocmd FileType ruby,html setlocal ts=2 sts=2 sw=2 expandtab 
    autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab 
    autocmd FileType go,php setlocal ts=4 sts=4 sw=4 noexpandtab 
endif

" enconding
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

"inoremap ( ()
"inoremap [ []
"inoremap { {}

let g:go_disable_autoinstall = 0

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }

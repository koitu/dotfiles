runtime: archlinux.vim
set nu rnu
" max of 16 colors so rounds to terminal colors
" set t_Co=16
" set t_Co=256
" colorscheme mycolors
colorscheme default
filetype plugin on
syntax on
vmap <C-c> "+y
vmap <C-x> "+c
vmap <C-v> "+p

" just to last position (find plugin)
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif


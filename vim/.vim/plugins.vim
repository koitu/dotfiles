"set runtimepath+=~/.vim/

" install vim-plug for easy loading and managing of vim plugins
"if empty(glob('~/.vim/autoload/plug.vim'))
"  silent call system('mkdir -p ~/.vim/{autoload,bundle,cache,undo,backups,swaps}')
"  silent call system('curl -fLo ~/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
"  execute 'source  ~/.vim/autoload/plug.vim'
"  augroup plugsetup
"    au!
"    autocmd VimEnter * PlugInstall
"  augroup end
"endif
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/vim-plug')

" style
Plug 'lilydjwg/colorizer'

" latex
Plug 'lervag/vimtex'

" snippets
Plug 'sirver/ultisnips'

call plug#end()

" note: can move this config into plug#begin

" lilydjwg/colorizer
let g:colorizer_maxlines = 1000

" lervag/vimtex
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

" sirver/ultisnips
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsSnippetDirectories=["/home/koitu/.vim/UltiSnips"]

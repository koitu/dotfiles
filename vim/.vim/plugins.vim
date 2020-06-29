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
Plug 'chrisbra/colorizer'

call plug#end()

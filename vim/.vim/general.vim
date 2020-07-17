runtime: archlinux.vim
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

set autoindent

" text wrapping
set wrap
set linebreak

" search while typing
set incsearch
set hlsearch
set ignorecase
set smartcase

" line numbering 
set nu rnu

" auto move to last position (find plugin)
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif



"   " commands
"   
"   " json pretty print
"   function! JSONify()
"     %!python -mjson.tool
"     set syntax=json
"   endfunction
"   command J :call JSONify()
"   nnoremap <silent> <leader>j <esc>:call JSONify()<cr><esc>
"   
"   " make inline more readable
"   function! UnMinify( )
"       %s/{\ze[^\r\n]/{\r/g
"       %s/){/) {/g
"       %s/};\?\ze[^\r\n]/\0\r/g
"       %s/;\ze[^\r\n]/;\r/g
"       %s/[^\s]\zs[=&|]\+\ze[^\s]/ \0 /g
"       normal ggVG=
"   endfunction
"   command UnMinify :call UnMinify()
"   nnoremap <silent> <leader>u <esc>:call UnMinify()<cr><esc>
"   
"   " remove highlighting
"   nnoremap <silent> <esc><esc> <esc>:nohlsearch<cr><esc>
"   
"   " remove trailing white space
"   command Nows :%s/\s\+$//
"   
"   " remove blank lines
"   command Nobl :g/^\s*$/d
"   
"   " toggle spellcheck
"   command Spell :setlocal spell! spell?
"   nnoremap <silent> <leader>s :setlocal spell! spell?
"   
"   " make current buffer executable
"   command Chmodx :!chmod a+x %
"   
"   " fix syntax highlighting
"   command FixSyntax :syntax sync fromstart
"   
"   " pseudo tail functionality
"   command Tail :set autoread | au CursorHold * checktime | call feedkeys("G")
"   
"   " zoom
"   function! Zoom() abort
"     if winnr('$') > 1
"       if exists('t:zoomed') && t:zoomed
"           execute t:zoom_winrestcmd
"           let t:zoomed = 0
"       else
"           let t:zoom_winrestcmd = winrestcmd()
"           resize
"           vertical resize
"           let t:zoomed = 1
"       endif
"     else
"       execute "silent !tmux resize-pane -Z"
"     endif
"   endfunction
"   command Zoom call s:Zoom()
"   nnoremap <leader>z :call Zoom()<cr>
"   inoremap <leader>z <ESC>:call Zoom()<cr>a
"   
"   " let's make some textmode art!
"   function! AsciiMode()
"     e ++enc=cp850
"     set nu!
"     set virtualedit=all
"     set colorcolumn=80
"   endfunction
"   command Ascii :call AsciiMode()






"   "general
"   " use vim settings, rather than vi settings
"   " must be first, because it changes other options as a side effect
"   set nocompatible
"   
"   " security
"   set modelines=0
"   
"   " hide buffers, not close them
"   set hidden
"   
"   " maintain undo history between sessions
"   set undofile
"   set undodir=~/.vim/undo
"   set noswapfile
"   
"   " fuzzy find
"   set path+=**
"   " lazy file name tab completion
"   set wildmode=longest,list,full
"   set wildmenu
"   set wildignorecase
"   " ignore files vim doesnt use
"   set wildignore+=.git,.hg,.svn
"   set wildignore+=*.aux,*.out,*.toc
"   set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class
"   set wildignore+=*.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp
"   set wildignore+=*.avi,*.divx,*.mp4,*.webm,*.mov,*.m2ts,*.mkv,*.vob,*.mpg,*.mpeg
"   set wildignore+=*.mp3,*.oga,*.ogg,*.wav,*.flac
"   set wildignore+=*.eot,*.otf,*.ttf,*.woff
"   set wildignore+=*.doc,*.pdf,*.cbr,*.cbz
"   set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.kgb
"   set wildignore+=*.swp,.lock,.DS_Store,._*
"   
"   " case insensitive search
"   set ignorecase
"   set smartcase
"   set infercase
"   
"   " the /g flag on :s substitutions by default
"   "set gdefault <<--- need to break this habit
"   
"   " make backspace behave in a sane manner
"   set backspace=indent,eol,start
"   
"   " searching
"   set hlsearch
"   set incsearch
"   if has("nvim")
"     set inccommand=split
"   endif
"   
"   " use indents of 4 spaces
"   set shiftwidth=4
"   
"   " tabs are tabs
"   set noexpandtab
"   
"   " an indentation every four columns
"   set tabstop=4
"   
"   " let backspace delete indent
"   set softtabstop=4
"   
"   " enable auto indentation
"   set autoindent
"   
"   " remove trailing whitespaces and ^M chars
"   augroup ws
"     au!
"     autocmd FileType c,cpp,java,php,js,json,css,scss,sass,py,rb,coffee,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))
"   augroup end
"   
"   " set leader key to comma
"   let mapleader=","
"   
"   " coffee pasta
"   set clipboard^=unnamedplus






"   " ui
"   " show matching brackets/parenthesis
"   set showmatch
"   
"   " disable startup message
"   set shortmess+=I
"   
"   " hide mode display
"   "set noshowmode
"   
"   " syntax highlighting
"   syntax on
"   set synmaxcol=512
"   filetype plugin on
"   
"   " stop unnecessary rendering
"   "set lazyredraw
"   
"   " show line numbers
"   set number
"   
"   " no line wrapping
"   set nowrap
"   
"   " no folding
"   set nofoldenable
"   set foldlevel=99
"   set foldminlines=99
"   set foldlevelstart=99
"   
"   " highlight cursor
"   set cursorline
"   "set cursorcolumn
"   
"   " show invisibles
"   set list
"   set listchars=
"   set listchars+=tab:·\ 
"   set listchars+=trail:·
"   set listchars+=extends:»
"   set listchars+=precedes:«
"   set listchars+=nbsp:░
"   
"   " split style
"   set fillchars=vert:▒
"   
"   " tree style file explorer
"   let g:netrw_liststyle=3
"   let g:netrw_browse_split=4
"   let g:netrw_winsize=25

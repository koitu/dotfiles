if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "mycolors"

"note that guifg uses acual color string and ctermfg uses below
"*cterm-colors*
"
"NR-16  COLOR NAME 
"0      Black
"1      DarkRed
"2      DarkGreen
"3      Brown, DarkYellow
"4      DarkBlue
"5      DarkMagenta
"6      DarkCyan
"7      LightGray, LightGrey, Gray, Grey
"8      DarkGray, DarkGrey
"9      Red, LightRed
"10     Green, LightGreen
"11     Yellow, LightYellow
"12     Blue, LightBlue
"13     Magenta, LightMagenta
"14     Cyan, LightCyan
"15     White

hi Nontext		ctermfg=15	
hi Normal		guifg=#E6E1DC		guibg=#151515
hi Cursor               guibg=#FF8939
hi CursorLine           guibg=#202020
hi LineNr               ctermfg=14		guibg=#b8b8c8
hi CursorLineNr		ctermfg=14
hi Search               guibg=#5A647E
hi VertSplit            guifg=#1b1b1b		guibg=#1b1b1b
hi Visual               guibg=#5A647E

" Folds
" line used for closed folds
hi Folded                    guifg=#5A647E guibg=#202020 
hi FoldColumn                guifg=#505050 guibg=#050505

" Misc
" ----
" directory names and other special names in listings
hi Directory                 guifg=#A0CF5D 

" Popup Menu
" ----------
" normal item in popup
hi Pmenu                     guifg=#F6F3E8 guibg=#444444 
" selected item in popup
hi PmenuSel                  guifg=#000000 guibg=#A0CF5D 
" scrollbar in popup
hi PMenuSbar                 guibg=#5A647E 
" thumb of the scrollbar in the popup
hi PMenuThumb                guibg=#AAAAAA 


"Comment
hi Comment                   guifg=#809080 
hi Todo                      guifg=#809080 guibg=NONE 

"Invisibles
hi NonText                   guifg=#665544
hi SpecialKey                guifg=#665544

"PseudoVariable
"nil, self, symbols, etc
hi Constant                  guifg=#7DC1CF

"Class, Module, Define
"def, end, include, etc
hi Define                    guifg=#FFFFB9 gui=bold

"Interpolation
hi Delimiter                 guifg=#B8D68F

"Error, InvalidVariable
hi Error                     guifg=#FFFFFF guibg=#990000

"Function
hi Function                  guifg=#E84F4F gui=bold 

"Identifier
"@var, @@var, $var, etc
hi Identifier                guifg=#4E9FB1 

"Include
"include, autoload, extend, load, require
hi Include                   guifg=#E1AA5D gui=bold 

"Keyword, KeywordAsMethod
"alias, undef, super, yield, callcc, caller, lambda, proc
hi Keyword                   guifg=#E1AA5D

" same as define
hi Macro                     guifg=#E1AA5D 

"Integer
hi Number                    guifg=#A0CF5D

" #if, #else, #endif
hi PreCondit                 guifg=#E1AA5D 

" generic preprocessor
hi PreProc                   guifg=#E1AA5D 

"Control, Access, Eval
"case, begin, do, for, if unless, while, until else, etc.
hi Statement                 guifg=#E1AA5D 

"String
hi String                    guifg=#A0CF5D

hi Title                     guifg=#FFFFFF

"Constant
hi Type                      guifg=#E84F4F 

hi DiffAdd                   guifg=#E6E1DC guibg=#144212
hi DiffDelete                guifg=#E6E1DC guibg=#660000

hi link htmlTag              xmlTag
hi link htmlTagName          xmlTagName
hi link htmlEndTag           xmlEndTag

hi xmlTag                    guifg=#E8BF6A
hi xmlTagName                guifg=#E8BF6A
hi xmlEndTag                 guifg=#E8BF6A

" Status line - changes colors depending on insert mode
" Standard
hi User1          guifg=#E8BF6A   guibg=#202020   gui=bold
hi User2          guifg=#E84F4F   guibg=#202020   gui=bold
hi User3          guifg=#A0CF5D   guibg=#202020   gui=bold
hi User4          guifg=#202020   guibg=#E8BF6A   gui=bold
hi User5          guifg=#909090   guibg=#202020   
hi User6          guifg=#40352D   guibg=#202020   
hi User7          guifg=#202020   guibg=#202020   gui=bold
hi StatusLine     guifg=#E6E1DC   guibg=#202020   gui=bold
hi StatusLineNC   guifg=#606060   guibg=#202020   gui=bold

function! InsertStatuslineColor(mode)

  if a:mode == 'i' " Insert Mode
    hi User4      guifg=#202020   guibg=#7DC1CF

  elseif a:mode == 'r' " Replace Mode
    hi User4      guifg=#202020   guibg=#E84F4F

  else
    hi User4      guifg=#202020   guibg=#E8BF6A

  endif
endfunction

" Call function
au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline guifg=#E6E1DC   guibg=#202020
au InsertLeave * hi User4      guifg=#202020   guibg=#E8BF6A

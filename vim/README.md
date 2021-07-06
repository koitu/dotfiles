yay vim pls help

Ctrl + [ - exit mode

j - down
k - up
h - left
; - right

i - insert
10i - duplicate insert 10 times
I - insert at beginning of line
a - insert after cursor
A - insert at end of line

gg - jump to begin
G - jump to end

g_ - jump to last non-blank
_ - jump to first non-blank
^ - jump to first character			
0 - start of line
$ - end of line
10gg - jump to line 10
:10 - jump to line 10

Ctrl+f - PgDn (Forward)
Ctrl+B - PgUp (Bcakward)

zz - centre cursor vertically
Ctrl-e - down (without moving cursor)

w - next word
e - end of next word
b - previous word

o - insert newline below
O - insert newline above

% - go to matching bracket

v - visual
Ctrl-v - visual block (always rectangle)
V - visual line (full select every line)

y - yank (visual)
yy or Y - yank line
y$ - yank to end of line (but no \n)
yiw - yank current word (exclude surrounding whitespace)
yaw - yank current word (include surrounding whitespace)
yt{x} - yank from current pos to {x} lines down
yf{x} - yank from current pos to {x} lines down

d - delete (visual)
dd - delete line
D - delete until end of line
dw - delete next word
db - delete previous word
d:1,10 - delete line 1 to 9

x - delete (charcter)

p - paste

J - remove \n

r - replace (character)
R - replace mode (like insert but overwrites characters)
~ - swap case
C - delete until end of line and insert mode
cc - delete line and insert mode
s - delete charcter and insert mode
S - same as cc
. - repeat last change

u - undo
Crtl-r - redo

>> - append tab to beginning
<< - remove tab from beginning
Ctrl-t - same as >> (insert mode)
Ctrl-d - same as << (insert mode)

% use in the middle of word or after space
% press any key to insert word (like a space or another letter)
% menu can be exited using esc or Ctrl-[
Ctrl-p - vim auto completion (insert mode) (afterwards it is how you nav up on the menu it brings up)
Ctrl-n - vim auto completion (insert mode) (afterwards it is how you nav down on the menu it brings up)

/ - search
? - search backword
n - next match
N - previous match

:%s/old/new/g - replace all old with new in file
:%s/old/new/gc - replace all ole with new in file with confirmations

Ctrl-h - delete word (insert mode) (is supposed to delete one char)
Ctrl-w - delete word (insert mode)
Ctrl-u - delete line (insert mode)
Ctrl-w - jump between screen in split mode

:split - split horizontally
:vsplit - split veritcally
:only - exit split screen

Ctrl-g - show filename

:e filename - edit a file in a new buffer
:sp filename - open a file in a new buffer and split window

Ctrl-ws - split window
Ctrl-ww - swap windows
Ctrl-wq - quit window
Ctrl-wv - split window vertically

Ctrl-wh - move right
Ctrl-wj - move down
Ctrl-wk - move up
Ctrl-wl - move left

Ctrl-wH - move window right
Ctrl-wJ - move window down
Ctrl-wK - move window up
Ctrl-wL - move window left

qa - start recording macro to @a (qb, qc, ...)
qA - start recording append to macro @a
q - end recording macro
@a - execute macro @a
5@a - execute macro @a 5 times
@@ - execute last executed macro

q: - command history in file


Ctrl-t - tag stack (???)
Ctrl-o - jumplist (???)
Ctrl-t - insert tab (insert mode)
Ctrl-o - escape insert mode to perform one command (insert mode)

Ctrl-o zz - center window
Ctrl-o H/M/L - jump to top/middle/bottom window
Ctrl-o 'a - jump to mark 'a'
Ctrl-o !! curl https://google.com
Ctrl-o !! pwd


Using Vim marks
m{a-z} - set mark at current cursor location
'{a-z} - jump to line of mark {a-z}
\`{a-z} - jump to position of mark {a-z}
:marks - list all the current marks
:marks aB - list marks a,B

Lowercase {a-z} marks will only exists in the current buffer
Uppercase {A-Z} marks are global (ex 'A will open the file the mark was placed in)
Note that you will need to save current buffer before leaving file when using 'A
This is because you are basicly closing the current buffer and opening another
so exiting buffer will exits vim 

]' - jump to next line with lowercase mark
[' - jump to previous line with lowercase mark
]\` - jump to next lowercase mark
[\` - jump to previous lowercase mark

\`. - jump to position where last change occured in the current buffer
\`" - jump to position where last exited current buffer
\`0 - jump to position in last file edited (when exited Vim)
\`1 - like \`0 but the previous file
'' - jump back (to line in current buffer where jumped from)
\`\` - jump back (to position in current buffer where jumped from)
\`[ or \`] - jump to beginning/end of previously changed or yanked text
\`< or \`> - jump to beginning/end of visual selection

:delmarks a - delete mark a
:delmarks a-d - delete marks a, b, c, d
:delmarks aAbxy - delete marks a, A, b, c, y
:delmarks! - delete all marks for the current buffer {a-z}



Inserting from register
"{a-z}{y} - puts the stuff gathered by yank {y} into register {a-z}
"ayiw - puts word without surrounding spaces into register a

Ctrl-r {a-z} - output stuff in regester (insert mode)
Ctrl-r {0-9} - output {0-9}-th most recent yank/deletes (insert mode)

Ctrl-r " - insert the last yank/delete (insert mode)
Ctrl-r % - insert file name (insert mode)
Ctrl-r / - insert last search term (insert mode)
Ctrl-r : - insert last command line (insert mode)

Ctrl-r ={expr} - evaluate the {expr} and output result (insert mode)
Ctrl-r =1+1 - output the result of 1+1 (insert mode)

function! HelloFunc()
	return "Hello Vim Script!"
endfunction
Ctrl-r =HelloFunc() - evaluate the vim script expression (insert mode)




commands I want
; - repeat last movement command (like 5j then ;;;;;)
K - remove space above (reverse of J)
Ctrl-j - add space below (no insert mode)
Ctrl-k - add space above (no insert mode)
[ - go to left bracket matching the right bracket
] - go to right bracket matching the left bracket
<Space> - remap to insert one character (https://vim.fandom.com/wiki/Insert_a_single_character#:~:text=Now%2C%20when%20in%20normal%20mode,that%20you%20want%20to%20insert.)

search like command without highlighting - but regular search still has highlighting (shortcut for disable search highlighting?)




Random thing: must shells don't differentiate between lowercase and uppercase control characters. So vim can't either.

This means that Ctrl-x is equivelent to Ctrl-X



:Exp - open vim file explorer
:Sex - split horizontally and open file explorer on top
:Vex - split vertically and open file explorer on left

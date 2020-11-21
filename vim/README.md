yay vim pls help

Ctrl + [ - exit mode

j - down
k - up
h - left
; - right

i - insert
I - insert at beginning of line
a - insert after cursor
A - insert at end of line

gg - jump to begin
G - jump to end
g_ - jump to last non-blank
_ - jump to first non-blank
0 - beginning of line
$ - end of line

zz - centre cursor vertically
Ctrl-e - down (without moving cursor)

w - next word
b - previous word

o - insert newline below
O - insert newline above

% - go to matching bracket

v - visual
Ctrl-v - visual block (always rectangle)
V - visual line (full select every line)

y - yank (visual)
yy - yank line

d - delete (visual)
dd - delete line
dw - delete next word
db - delete previous word
:1,10 - delete line 1 to 10

x - delete (charcter)

p - paste

J - remove \n

r - repalce (character)
~ - swap case
cc - delete line and insert mode
s - delete charcter and insert mode
S - same as cc
. - repeat last change

u - undo
Crtl-r - redo

>> - move right
<< - move left

/ - search
? - search backword
n - next match
N - previous match

:%s/old/new/g - replace all old with new in file
:%s/old/new/gc - replace all ole with new in file with confirmations

Ctrl-w - delete word (insert mode)
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

qa - start recording macro to @a (qb, qc, ...)
qA - start recording append to macro @a
q - end recording macro
@a - execute macro @a
5@a - execute macro @a 5 times
@@ - execute last executed macro

q: - command history in file

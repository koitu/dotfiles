keyboard configuration
https://wiki.archlinux.org/index.php/Linux_console/Keyboard_configuration

view current:
localectl status

to list:
localectl list-keymaps

to set temp:
loadkeys <keymap>

persistent configuartion
/etc/vconsole.conf
> KEYMAP=uk

note that default is us

location of layouts:
> /usr/share/kbd/keymaps/

creating a custom layout
> mkdir -p /usr/local/share/kbd/keymaps
> vim /usr/local/share/kbd/keymaps/personal.map

full active keymap can be seen with:
> dumpkeys -l
examples:
set key 112 to e
keycode 112  = e
set key 112 to the euro
keycode 112 = euro
set key 112 to keyboard action (F1-F246)
keycode 112 = F70
set action to output string
string F70 = "Hello"
set action to execute command
string F70 = "sudo /usr/sbin/hibernate\n"

Other things that can be done:
to make right alt the same the left alt use:
include "linux-with-two-alt-keys"
to add file:
/usr/share/kbd/keymaps/i386/include/linux-with-two-alt-keys.inc

to swap CapsLock with Escape
keycode 1 = Caps_Lock
keycode 58 = Escape

or to make CapsLock a Control key
keycode 58 = Control

to swap Capslocak and left control
keycode 29 = Caps_Lock
keycode 58 = Control

to more stuff like delay and others visit the archlinux article

install optimus-manager arandr autorandr

move optimus-manager.conf to /etc/optimus-manager/
move autorandr to .config/

enable optimus-manager autorandr

restart

if without config
autorandr --save mobile
autorandr --save docked

install bluez and bluez-utils
use bluetoothctl to manage it
use blueman to manage it by graphical interface
start/enable bluetooth.service

for audio add:
install pulseaudio=bluetooth
- /etc/pulse/system.pa
> ...
> load-module module-bluetooth-policy
> load-module module=bluetooth-discover
> ...

for bluetooth serial:
install bluez-rfoomm and bluez=hcitool
bind paired device MAC address to tty terminal
```
rfcomm bind rfcomm0 <MAC address of bluetooth device>
```
open /dev/rfoom0 for serial communication:
```
picocom /dev/rfcomm0 -b 115200
```

https://wiki.archlinux.org/index.php/Bluetooth#Installation

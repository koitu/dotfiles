# PC speaker or pcspkr
to remove a kernal module:
```
rmmod pcspkr
modprobe -r pcspkr
```
to load a kernal module:
```
insmod pcspkr
modprobe pcspkr
```

putting nobeep.conf in /etc/modprobe.d/ will disable pcspkr on next startup

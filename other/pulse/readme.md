https://wiki.archlinux.org/index.php/PulseAudio#ALSA
how to get better sound on linux?
install pulseaudio-alsa
move daemon.conf to /etc/pulse/
systemctl --user start pulseaudio
systemctl --user enable pulseaudio

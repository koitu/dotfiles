install pulseaudio pulseaudio-alsa # you don't need alsa because pulseaudio-alsa allows pulse to manage libasound
I don't have a /etc/asound.conf
but the recommended config is:
```
# Use PulseAudio plugin hw
pcm.!default {
   type plug
   slave.pcm hw
}
```
move daemon.conf to /etc/pulse/
systemctl --user start pulseaudio
systemctl --user enable pulseaudio
remember to copy updated conf to this dir

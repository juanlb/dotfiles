# Grub
```
sudo cat /etc/default/grub                
```
Cambiar esto:
```
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash amd_iommu=off"
```
Ejecutar:
```
sudo update-grub
```

# Sensibilidad para el trackpoint
```
sudo vim /usr/share/libinput/50-system-lenovo.quirks
```
```
[Lenovo T495 Trackpoint]
MatchUdevType=pointingstick
MatchName=*TPPS/2 Elan TrackPoint*
MatchDMIModalias=dmi:*svnLENOVO:*:pvrThinkPadT495*
AttrTrackpointMultiplier=0.25
```

Después `Logout` y `Login`

# Bateria
Install `tlp` y `powertop`

```
sudo tlp-stat
sudo powertop --auto-tune
```

Install TLPGUI

## Call powertop auto-tune automatically at boot time

On systems using systemd as startup manager (like Ubuntu) install it as a service:
```
cat << EOF | sudo tee /etc/systemd/system/powertop.service
[Unit]
Description=PowerTOP auto tune

[Service]
Type=idle
Environment="TERM=dumb"
ExecStart=/usr/sbin/powertop --auto-tune

[Install]
WantedBy=multi-user.target
EOF

systemctl daemon-reload
systemctl enable powertop.service
```

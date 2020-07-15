# Indicators

Source: https://www.addictivetips.com/ubuntu-linux-tips/re-enable-app-indicators-on-elementary-os/
```
sudo apt install indicator-application
sudo apt update
sudo apt upgrade
cd /etc/xdg/autostart/

cp indicator-application.desktop ~/
cd ~/.config
mkdir -p autostart
mv ~/indicator-application.desktop autostart/
gedit ~/.config/autostart/indicator-application.desktop
```
```
OnlyShowIn=Unity;GNOME;Pantheon;
```
```
sudo chmod +x ~/.config/autostart/indicator-application.desktop

cd /tmp
wget http://ppa.launchpad.net/elementary-os/stable/ubuntu/pool/main/w/wingpanel-indicator-ayatana/wingpanel-indicator-ayatana_2.0.3+r27+pkg17~ubuntu0.4.1.1_amd64.deb
sudo apt install ./wingpanel-indicator-ayatana_2.0.3+r27+pkg17~ubuntu0.4.1.1_amd64.deb
```

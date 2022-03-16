# ThinkPad T495 and Elementary OS 6.x

* F12 en boot

## Instalando Elementary 6

Seleccionar `Custom`

* Seleccionar la primera partición, marcar como `Use Partition` => `Use as:` `Boot (/boot/efi)`
* Root (`/`) y `/home/partition_data` como siempre

## Una vez instalado

```
sudo apt update
sudo apt upgrade
```

```
sudo apt install -y zsh htop vim git openssh-server gdebi dconf-editor software-properties-common awscli jq xsel apt-transport-https snapd
sudo apt install -y filezilla gpaste barrier flameshot caffeine mysql-client kolourpaint libreoffice-calc gedit pavucontrol ffmpeg vlc
```
* reboot
```
cd /home/partition_data/juanlb_files
./crear_links.sh
chsh -s $(which zsh)
```
* reboot

### Gedit con Ctrl + Tab para mover Tabs

https://github.com/jefferyto/gedit-control-your-tabs

### Tecla Windows o Super para menu

`dconf editor`
- `org.pantheon.desktop.gala.behavior.overlay-action`
Setear `io.elementary.wingpanel --toggle-indicator=app-launcher`

### Agregar Windows/Super J y K para mover workspaces
- switch-to-workspace-left
`['<Super>Left', '<Super>j']`

- switch-to-workspace-right
`['<Super>Right', '<Super>k']`

### Quitar Windows/Super L para lockar pantalla
- org.gnome.settings-daemon.plugins.media-keys screensaver
`['']`

### Elementary Tweaks

```
sudo add-apt-repository ppa:philip.scott/pantheon-tweaks
sudo apt update
sudo apt install pantheon-tweaks
```

#### Activar Force Dark Stylesheet

En `Tweaks` activar `Force to use dark stylesheet`

### rbenv
```
sudo apt install -y rbenv
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
rbenv install 2.7.5
rbenv global 2.7.5
```

#### For VScode
```
gem install rubocop
gem install rufo
```


### git flow
```
wget --no-check-certificate -q  https://raw.github.com/petervanderdoes/gitflow-avh/develop/contrib/gitflow-installer.sh && sudo bash gitflow-installer.sh install stable; rm gitflow-installer.sh
```

### git config

```
git config --global user.email "juanlb@gmail.com"
git config --global user.name "juanlb"    
```

### Docker
```
sudo apt remove docker docker-engine docker.io containerd runc
sudo apt install -y ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
```
```
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  focal stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```
```
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker $USER
```

### Docker compose

https://docs.docker.com/compose/install/

### Terminal con Windows + T

#### Quitar el que viene por defecto:
`dconf editor`
org.gnome.settings-daemon.plugins.media-keys.terminal

Disable `Default value`
Remove the `<Super>t` from the input field, and let `['']`

#### Crear el nuevo shortcut

En `Custom shortcuts`:

`io.elementary.terminal -n` => `Windows + t`


### Acceso directo Notificaciones Windows/Super N

Shortcuts:
`io.elementary.wingpanel -t messages` => `Super + N`

### Acceso directo Calendario Windows/Super C

Shortcuts:
`io.elementary.wingpanel -t datetime` => `Super + C`

### Flameshot

`dconf editor`
org.gnome.settings-daemon.plugins.media-keys.screenshot

Disable `Default value`
Remove the `['Print']` from the input field, and let `['']`
#### Crear el nuevo shortcut
Crear un nuevo shortcut como `<Shift>Print` (Print solo no permite)
En `dconf editor` buscar el custom-keybindings, y editar a mano, poniendo `Print`

### Gpaste

`Applications` -> `Startup`

Comando: `/usr/bin/gpaste-client start`

### Caffeine

`Applications` -> `Startup`

Agregar buscando `Caffeine Indicator`

### WingPanel todos los iconos

https://github.com/Lafydev/wingpanel-indicator-ayatana

```
sudo apt install -y libglib2.0-dev libgranite-dev libindicator3-dev libwingpanel-dev indicator-application
```
Bajar el `.deb` correcto (ojo que está el de Hera)

Y después agregar en `startup app`:
`/usr/lib/x86_64-linux-gnu/indicator-application/indicator-application-service`

### OpenVPN 3
```
cd /tmp
wget https://swupdate.openvpn.net/repos/openvpn-repo-pkg-key.pub
sudo apt-key add openvpn-repo-pkg-key.pub
DISTRO=focal
sudo wget -O /etc/apt/sources.list.d/openvpn3.list https://swupdate.openvpn.net/community/openvpn3/repos/openvpn3-$DISTRO.list
sudo apt update
sudo apt install openvpn3
```

## Git diff mas lindo
 
Se usa `delta`:

- https://github.com/dandavison/delta

se instala como `.deb` desde acá:

- https://github.com/barnumbirr/delta-debian/releases (usar la `buster`)

la configuración está en:

`Github: juanlb/dotfiles/delta/.gitconfig` y se copia en `~/`

### Indicador de Workspace en WingPanel

Source: https://entornosgnulinux.com/2020/10/10/indicador-workspace-wall-en-elementary-os-hera-odin/
```
sudo add-apt-repository ppa:yunnxx/elementary
sudo apt install wingpanel-indicator-wswalls
gsettings set org.gnome.desktop.wm.preferences workspace-names "['web','work','brave','code']"
```
Log out y Login

### Sublime text 

```
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install -y sublime-text
```

### Calendario
Source: https://github.com/elementary/calendar/issues/712

- You only need to add an App Password here https://myaccount.google.com/apppasswords
- From there, add an app password by choosing which app you'd use (in this case it's Calendar) and where you sync it (in this case it's Others)
- Then Google will generate a random password for you
- Copy it and use the password to login with your email address in the Calendar App on elementary

## Bateria:

- auto-cpufreq
- slimbookbattery (no slimbookamdcontroller)

### auto-cpufreq
Source: https://github.com/AdnanHodzic/auto-cpufreq 
```
sudo snap install auto-cpufreq
sudo auto-cpufreq --install
```

### TLP (Esto no, no es compatible auto-cpufreq)
```
# sudo add-apt-repository ppa:linrunner/tlp
# sudo apt update
# sudo apt install tlp tlp-rdw
# sudo tlp start
```

### slimbookbattery (no slimbookamdcontroller)
```
sudo add-apt-repository ppa:slimbook/slimbook
sudo apt update
sudo apt install -y slimbookbattery
# sudo apt install -y slimbookamdcontroller (este no)
```


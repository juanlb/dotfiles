# Instalación Dell XPS 13

* F12 en boot
* Legacy boot -> USB Storage Device

## Opciones de disco

**Device for boot loader instasllation**
* `/dev/nvme0n1` (el que aparece por defecto)

# Pasos

* sudo apt-get update
* sudo apt-get upgrade
* Correr el script que monta los `links simbolicos`:`./crear_links.sh`
* Instalar `Eddy` de la tienda de apps
* Instalar Chrome
* apt install general
* Instalar la adaptacion HiDPI
* Claves `.ssh`
* Claves `AWS`
* aws cli
* Caja con un solo click
* Hotcorners
* zsh
* Passwords wifi
* rbenv
* Algun ruby (en caso de no tener la carpeta `.rbenv` ya instalada)
* Multitouch
* Workspaces dinámicos
* TeamSQL
* VIM
* Docker y docker-compose
* Dockerizar rails apps
* Git Flow
* Configurar Gedit (short cut y estilo)
* Mattermost
* Telegram y corrección de acentos
* Visual Studio Code
* Firefox
* Dropbox
* Elementary Plus
* Spotify Client
* Quitar Safe Paste al terminal
* VirtualBox
* Alt Tab Switcher
* Indicator Multiload
* Configurar calendario con google
* Libre Office
* Remote mouse
* Balsamiq
* Postman
* TeamViewer Host (desde el sitio, es .deb)
* Catfish (desde AppCenter)
* ThinkPad Keyboard

# Generales

# Bateria DELL 

## Matar el bluetooth
´´´
rfkill block bluetooth
´´´

## Agregar slimbook battery

Para elementary, agregar ´notificatins´

## Powertop
usar ´--auto-tune´ y ponerlo en el inicio

## Git diff mas lindo
 
Se usa `delta`:

- https://github.com/dandavison/delta

se instala como `.deb` desde acá:

- https://github.com/barnumbirr/delta-debian/releases (usar la `buster`)

la configuración está en:

`Github/delta/.gitconfig` y se copia en `~/`

## Todos los iconos en wingpanel

- https://github.com/Lafydev/wingpanel-indicator-ayatana

## ZSH
* https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH#install-and-set-up-zsh-as-default

```bash
sudo apt-get install zsh
chsh -s $(which zsh)
```
Logout - Login

Copiar
```bash
Github/consola/.oh-my-zsh
Github/consola/.zshr
a:
/home/juanlb/
```
Copiar
```bash
Dropbox/homejuanlb/.zsh_history
# copiar a:
/home/juanlb/.zsh_history
```

## Claves
```bash
Dropbox/homejuanlb/.ssh
# copiar a:
/home/juanlb/.ssh
```

## Credenciales AWS
```bash
Dropbox/homejuanlb/.aws
# copiar a:
/home/juanlb/.aws
```

## aws cli
### desde Hera:
```
sudo apt install jq awscli
```

## Flameshot

```
apt install flameshot
```
Desde shortcuts asignar `/usr/bin/flameshot gui` a `print` (se reasigna solo)

### Viejo

```bash
sudo apt-get install python-pip
pip install awscli --upgrade --user
```
## VIM
```bash
Github/vim/.vimrc
# copiar a:
/home/juanlb/.vimrc
```
Instalar `vim-plug`:
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
Y luego entrando en `vim` ejecutar:
```
:PlugInstall
```
## Volumen bluetooth con el Bose
```
sudo ln -s /home/juanlb/Projects/dotfiles/scripts/bose_bluetooth_volume/volume.rb /usr/local/bin/vol
```

## Docker TAGS (script para traer tags de un registry de docker)
```
sudo ln -s /home/juanlb/Projects/dotfiles/scripts/docker/docker_tags /usr/local/bin/docker_tags
```

## Mapear JKIL a flechas:
```
sudo ln -s /home/juanlb/Projects/dotfiles/scripts/map_JKIL_to_arrows/think /usr/local/bin/think
```

## Toggle seconds on Elementary clock
Mostrar/Ocultar segundos en el reloj de la barra de arriba
```
sudo ln -s /home/juanlb/Projects/dotfiles/scripts/toggle_seconds_on_elementary_clock/seconds /usr/local/bin/seconds
```

## Remover Windows + L lock screen
```nistrador de archi
gsettings set org.gnome.settings-daemon.plugins.media-keys screensaver "[]"
```
## Remover Windows key para ver shorcuts

Entrar en `dconf editor`

Ir a `org.pantheon.desktop.gala.behavior.overlay-action`
Disable `Use default value` y en `Command value` dejar **vacio**

Referencia: https://elementaryos.stackexchange.com/questions/17168/how-to-disable-keyboard-shortcuts-pop-up-in-juno

## Terminal con Windows + T

## Quitar el que viene por defecto:
`dconf editor`
org.gnome.settings-daemon.plugins.media-keys.termina

Disable `Default value`
Remove the `<Super>t` from the input field

## Crear el nuevo shortcut

En `Custom shortcuts`:

`io.elementary.terminal -n` => `Windows + t`

## Instalar Elementary Tweaks

```bash
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:philip.scott/elementary-tweaks
sudo apt-get update
sudo apt-get install elementary-tweaks
```

## Terminal

Quitar el Safe Paste:
Dentro de `Tweaks` buscar `Usafe Paste Alert` Para `Terminal` y desmarcarlo

# Configuraciones para Dell XPS 13 (9360)

## Administrador de archivos (Caja) con un solo click

Usar en el de control: `Tweaks`

* Files
* Single click

## Multitouch
Seguir:
* https://elementaryos.stackexchange.com/questions/14452/using-multi-touch-gestures-for-desktop-shifting
* https://neal.codes/blog/adding-mac-like-touch-gestures-to-elementary-os

Copiar el archivo:
```bash
Github/multitouch/libinput-gestures.conf
# copiar a:
/home/juanlb/.config/libinput-gestures.conf
```
#### Esto es de mi History
```bash
git clone http://github.com/bulletmark/libinput-gestures
cd libinput-gestures
sudo make install
sudo apt install libinput-tools xdotool
sudo gpasswd -a $USER input
libinput-gestures-setup autostart
```

## Escalado de pantalla
Armar el link simbolico:
```
  ln -s /home/juanlb/Projects/dotfiles/hidpi/scale_screen /usr/local/bin/scale_screen

```

Se puede usar desde cualquier lado, y cambiar el tamaño general de la letra desde linea de código.

Un lindo número es 1.5:
```
scale_screen 1.5
```

Sin parámetros muestra el factor actual

## Bateria
Powertop y TLP

# Aplicaciones

### Dropbox
Una vez instalado, editar el start up app que se crea con este comando:
```bash
gnome-session-properties
```
de esta manera:
```bash
env XDG_CURRENT_DESKTOP=Unity QT_STYLE_OVERRIDE='' dropbox start -i
```
Después ejecutar este comando para que Dropbox no lo vuelva a cambiar:
```bash
chmod 400 ~/.config/autostart/dropbox.desktop
```

Sino el ícono en la barra de tareas se ve mal

### rbenv con install
* https://github.com/rbenv/rbenv#installation
* https://github.com/rbenv/ruby-build#installation

```bash
sudo apt-get install -y libssl-dev libreadline-dev zlib1g-dev
```

Instalar `Ruby 2.3.1`

Si existe este directorio: `/home/partition_data/juanlb_files/rbenv_dir`, crear este link:
```bash
ln -s /home/partition_data/juanlb_files/rbenv_dir .rbenv
```
Sino crearlo y comenzar la instalación de cero


### Docker y docker-compose
#### Docker
```bash
$ sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
$ sudo apt-key fingerprint 0EBFCD88
```
Para `Hera`
```bash
$ sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   bionic \
   stable"
$ sudo apt-get update
$ sudo apt-get install docker-ce
```
Sacar `sudo`
```bash
$ sudo usermod -aG docker $USER
```
Logout y login
#### docker-compose
```bash
$ sudo curl -L https://github.com/docker/compose/releases/download/1.21.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
$ sudo chmod +x /usr/local/bin/docker-compose
$ docker-compose --version
```
### git flow
```
wget --no-check-certificate -q  https://raw.github.com/petervanderdoes/gitflow-avh/develop/contrib/gitflow-installer.sh && sudo bash gitflow-installer.sh install stable; rm gitflow-installer.sh
```
### sudo apt install
```bash
sudo apt install transmission zsh libinput-tools xdotool wmctrl vlc mysql-server vim git kolourpaint4 openssh-server clipit gnome-disk-utility transmission recordmydesktop htop cups-pdf imagemagick libmagickwand-dev libmagic-dev build-essential redis-server knockd filezilla gedit dconf-tools baobab usb-creator-gtk gnome-system-monitor
```

### Otras apps
* Mattermost
* Telegram
* Dropbox
* Remmina
* Firefox
* Spotify client
* node.js
* Elementary plus
* Powertop
* Virtualbox
* Google Keep

### Libre Office

Primero instalar JRE:


```bash
sudo add-apt-repository ppa:libreoffice/ppa
sudo apt-get update && sudo apt-get -y dist-upgrade
sudo apt-get install libreoffice
```

Ver si esto es necesario:
```bash
sudo apt-get install openjdk-8-jre
```

### Postman

Bajar el tar:
* https://app.getpostman.com/app/download/linux64

Descomprimir en `/opt/`

Y crear el acceso directo:

```bash
cd /usr/share/applications
sudo touch postman.desktop
sudo gedit postman.desktop
```
Contenido:
```
[Desktop Entry]
Encoding=UTF-8
Name=Postman
Comment=Postman
Exec=/opt/Postman/Postman
Icon=/opt/Postman/app/resources/app/assets/icon.png
Terminal=false
Type=Application
Categories=GNOME;Application;Development;
StartupNotify=true
```

### ThinkPad Keyboard
Crear este archivo (leer el contenido, porque hay que crear otro más):
`ThinkPad_keyboard.sh`
Contenido:
```
thinkpad_keyboard.sh 
#!/bin/bash

# IJKL as Arrows with CapsLk
## ~/.xmodmap 
# keycode 66 = Mode_switch
# keysym i = i I Up
# keysym l = l L Right
# keysym k = k K Down
# keysym j = j J Left

/usr/bin/xmodmap  ~/.xmodmap 


# Increase speed of TrackPoint acceleration

/usr/bin/xinput  --set-prop 11 278 1.0

# to see conf
# xinput --list-props 11 
```

UPDATE: si el archivo se llama `~/.Xmodmap`, la configuración se carga sola

## Quilombo Thinkpad T495 Radeon 
Agregar en:
```
/etc/default/grub
```
esto:
```
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash amd_iommu=off"
```
el asunto es agregar esto `amd_iommu=off`

### Balsamiq

Instalar WineHQ

```bash
sudo dpkg --add-architecture i386

wget -nc https://dl.winehq.org/wine-builds/Release.key
sudo apt-key add Release.key
sudo apt-add-repository https://dl.winehq.org/wine-builds/ubuntu/
sudo apt-get update
sudo apt-get install --install-recommends winehq-stable
```
El archivo está en:
```
Github/Balsamiq/Balsamiq_Mockups_3.5.15.exe
```
Instalar **PlayOnLinux** desde **AppCenter** e instalar.
**NO** Actualizar AIR.

**user**: `leexij@gmail.com`
**pass**: `eNrzzU/OLi0odswsqslJTa3IzHJIz03MzNFLzs+tMTQyNrcwsTQyAIEa5xpDAIFxDy`

Al `coso de arriba` le faltan 8k

### Remote mouse

Bajar archivo

http://www.remotemouse.net/downloads/RemoteMouse.tar.gz

Seguir instrucciones para Ubuntu 14

### Calendario con Google

Se agrega con la contraseña única de google para la App

* https://elementaryos.stackexchange.com/questions/10048/sync-apple-calendar-google-calendar-into-native-calendar-application

### Indicator Multiload
* https://elementaryos.stackexchange.com/questions/40/how-can-i-show-performance-graphs-in-wingpanel
```bash
sudo add-apt-repository -y ppa:indicator-multiload/stable-daily
sudo apt update
sudo apt install indicator-multiload
```

### Alt Tab Switcher

### UPDATE - éste anda bien en Elementary: 5.1.7

https://github.com/markstory/gala-alt-tab-plus

Hay que instalar:
```
sudo apt install elementary-sdk libclutter-1.0-dev libwnck-3-dev cmake
```
Seguir las instrucciones y reiniciar


**EN HERA YA NO ANDA**

* https://github.com/p0pye/gala-elementary-alt-tab-switcher
```bash
$ sudo add-apt-repository ppa:popye/eos-window-switcher
$ sudo apt-get update
$ sudo apt-get install gala-eos-window-switcher
```
Después `dconf Editor`
* /org/pantheon/desktop/gala/plugins/elementary-alt-tab/
Y modificar `preview-in-switcher`


### Visual Studio Code

Instalar el plugin `Settings Sync`
El `key` y el `secret` está en Dropbox

## Configuraciones Elementary-OS


### Passwords wifi
Como `root`
```bash
systemctl stop NetworkManager.service
# Copiar Dropbox/homejuanlb/system-connections.tar.gz a /etc/NetworkManager
cd /etc/NetworkManager
tar -xzf system-connections.tar.gz
systemctl start NetworkManager.service
```

### Teclado

* English (US, International with dead keys)

#### Workspaces dinámicos

**EN HERA NO ANDA MAS**

https://dysonsimmons.com/indicator-workspaces/

#### HotCorners
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash amd_iommu=off"

Nothing-Nothing
Multitasking-Nothing

#### Telegram-Desktop
No funciona con Acentos
Agregar en `Startup Apps`:

```
Github/Telegram/TelegramAcentos.sh
```

/opt/Telegram/TelegramAcentos.sh

#### gedit
Settings -> Keyboard -> Shorcuts -> Custom
```
/usr/bin/gedit -> CTRL-G
```
# Problemas con RADEON - ThinkPad T495

Error en `dmesg`:
```
FAILED TO WRITE REG 28b4 WAIT REG 28c6
```
Hay que hacer update de drivers de video:

```
sudo apt install --install-recommends linux-generic-hwe-18.04

sudo add-apt-repository ppa:oibaf/graphics-drivers
sudo apt-get update
sudo apt-get dist-upgrade
```

Fuentes:
https://github.com/pop-os/pop/issues/782#issuecomment-604634230
https://launchpad.net/~oibaf/+archive/ubuntu/graphics-drivers

## restart Wifi

* Instalar `Alacarte`
* Crear un nuevo comando `Restart Wifi`
* El comando es `bash -c 'service network-manager restart'`

## nm-applet
En `Startup Apps` estba:
```
/usr/bin/nm-applet
```
No sé por qué

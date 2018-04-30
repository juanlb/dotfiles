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
* Instalar la adaptacion HiDPI
* Claves `.ssh`
* Claves `AWS`
* Caja con un solo click
* Hotcorners
* zsh
* sudo apt-get install git
* Passwords wifi
* rbenv
* Algun ruby (en caso de no tener la carpeta `.rbenv` ya instalada)
* Multitouch

# Generales

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

## VIM
```bash
Github/vim/.vim
Github/vim/.vimrc
# copiar a:
/home/juanlb/.vim
/home/juanlb/.vimrc
```
## Terminal
https://hyper.is
```
gsettings set org.gnome.desktop.default-applications.terminal exec hyper
gsettings set org.gnome.desktop.default-applications.terminal exec-arg ''
```
## TeamSQL
https://teamsql.io/


## Dockerizar Rails apps
https://github.com/juan-lb/docker-compose-rails

# Configuraciones para Dell XPS 13 (9360)

## Administrador de archivos (Caja) con un solo click
* https://elementaryos.stackexchange.com/questions/38/configure-files-to-use-double-click

```bash
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:philip.scott/elementary-tweaks
sudo apt-get update
sudo apt-get install elementary-tweaks
```
Luego en el panel de control se verá `Tweaks`

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
Copiar el archivo:
```bash
Github/hidpi/scale_screen.sh
# copiar a:
/usr/local/bin/scale_screen.sh
```
Agreagarlo en `Startup Apps`

## Bateria
Powertop y TLP

# Aplicaciones

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
Siempre cambian, recordar lo de quitar `sudo`
### git flow
```
wget --no-check-certificate -q  https://raw.github.com/petervanderdoes/gitflow-avh/develop/contrib/gitflow-installer.sh && sudo bash gitflow-installer.sh install stable; rm gitflow-installer.sh
```
### sudo apt install
* Koloupaint
* git
* openssh-server
* Gedit
* Clipit
* Mattermost-Desktop
* Telegram-Desktop
* Dropbox
* Remmina
* Firefox
* Transmission BitTorrent
* gnome-disk-utility
* recordmydesktop
* spotify-client
* htop
* cups-pdf
* imagemagick libmagickwand-dev libmagic-dev  build-essential
* nodejs
* elementaryplus
* powertop
* redis-server redis
* knockd
* Virtual Box
* Google Keep
* Filezilla

### Visual Studio Code

#### ctrl+shift+D
* File > Preferences > Keyboard Shortcuts
* Editar `keybindings.json`
```json
    {
        "key": "ctrl+shift+d",
        "command": "editor.action.copyLinesDownAction",
        "when": "editorTextFocus"
    }
```

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
https://dysonsimmons.com/indicator-workspaces/

#### HotCorners

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

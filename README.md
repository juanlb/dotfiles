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

Quitar el Safe Paste:
https://www.fosslinux.com/496/how-to-disable-unsafe-copy-paste-warning-while-using-terminal-in-elementary-os.htm
```bash
sudo apt-get install dconf-tools
```
Abrir `dconf`
* org > pantheon > terminal > settings > unsafe paste alert

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

### Dropbox
Una vez instalado, borrar el start up app que se crea y agregar este:
```bash
env XDG_CURRENT_DESKTOP=Unity QT_STYLE_OVERRIDE='' dropbox start
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
Para `Loki`
```bash
$ sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   xenial \
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
sudo apt install transmission zsh libinput-tools xdotool wmctrl vlc mysql-server vim git kolourpaint4 openssh-server clipit gnome-disk-utility transmission recordmydesktop htop cups-pdf imagemagick libmagickwand-dev libmagic-dev build-essential redis-server knockd filezilla gedit
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

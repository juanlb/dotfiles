# Generales

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

## Consola
```bash
Dropbox/homejuanlb/.zsh_history
# copiar a:
/home/juanlb/.zsh_history
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
  sudo apt install libinput-tools xdotool
  libinput-gestures-setup autostart
  gedit ~/.config/libinput-gestures.conf

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

Instalar `Ruby 2.3.1`

Crear este link:

```
/home/juanlb/.rbenv -> /home/partition_data/juanlb_files/rbenv_dir
```
Borrar `/home/partition_data/juanlb_files/rbenv_dir` y volverlo a crear para no arrastrar datos viejos.


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


### Conexiones wifi
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
## nm-applet
En `Startup Apps` estba:
```
/usr/bin/nm-applet
```
No sé por qué

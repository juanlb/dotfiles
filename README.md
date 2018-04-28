# Generales

## Claves
```
Dropbox/homejuanlb/.ssh
```
a
```
/home/juanlb/.ssh
```

## Credenciales AWS
```
Dropbox/homejuanlb/.aws
```
a:
```
/home/juanlb/.aws
```

## Consola
```
Dropbox/homejuanlb/.zsh_history
```
a:
```
/home/juanlb/.zsh_history
```
## VIM
```
Github/vim/.vim
Github/vim/.vimrc
```
a:
```
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
```
Github/multitouch/libinput-gestures.conf
```
a:
```
/home/juanlb/.config/libinput-gestures.conf
```


## Escalado de pantalla
Copiar el archivo:
```
Github/hidpi/scale_screen.sh
```
a:
```
/usr/local/bin/scale_screen.sh
```
## Bateria
Powertop y TLP

# Aplicaciones

### rbenv con install
* https://github.com/rbenv/rbenv#installation
* https://github.com/rbenv/ruby-build#installation

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

### Visual Studio Code

### Configuraciones Elementary-OS

#### Workspaces dinámicos
https://dysonsimmons.com/indicator-workspaces/

#### HotCorners

Nothing-Nothing
Multitasking-Nothing

#### Telegram-Desktop
No funciona con Acentos
Agregar en start up apps:

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
En start up apps estba:
```
/usr/bin/nm-applet
```
No sé por qué

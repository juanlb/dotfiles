# MacBook Air M2

## Instalar
- homebrew
 - gitflow-avh # lo de avh me lo sugirió Copilot.
- Rosseta 
- Karabiner
- WhatsApp
- xbar
- Mega
- Docker
- Brave
- iTerm2
- Grammarly

## iTerm
Para que funcione la navegación de `home` y `end` en iTerm, hay que ir a `Preferences > Profiles > Keys` y agregar los shortcuts:
- `home + right_arrow` = `0x05`
- `home + left_arrow` = `0x01`

Fuente: https://apple.stackexchange.com/questions/389525/how-do-i-do-home-and-end-in-iterm2

## Mission Control
- Desactivar `Automatically rearrange Spaces based on most recent use`

## Proyectos
- Bajar el backup de Mega
- Crear carpeta `partition_data` en el home.
- La carpeta `Projects` moverla directamente, no hacer symlink.
- La carpeta `.ssh` hacer symlink.
- La carpeta `.aws` hacer symlink.

## Comando bastion de Relatient

```
sudo ln -s /Users/juanlb/partition_data/juanlb_files/home/relatient-scripts/bastion /usr/local/bin/bastion
```
## Oh My Zsh
- Instalar desde acá: https://ohmyz.sh
- Sobreescribir el tema robbyrussell con el que está en el repo.
## AltTab
Instalar desde acá: https://alt-tab-macos.netlify.app

Cambiar el primer shorcut para que use el `visible space`

Abrirlo una vez y hacer clic en todas las ventanas invisibles, después ya queda bien.

## Mute Mic
- https://xbarapp.com
Agregar xbar, buscar el plugin de mute mic y agregarlo a xbar.

En la configuración de karabiner ya está listo para que F5 mutee el mic.

## Clipboard manager
https://maccy.app/

Ya está cofigurado en karabiner para que CapsLock + h sea el shortcut de maccy.

Investigar shortcut: ahora tiene conflicto con Slack y pintar de `código`.

## Caffeine - Keep your Mac awake - Owly:

https://apps.apple.com/us/app/owly-prevent-display-sleep/id882812218?mt=12

## TextMate

Instalar desde aca: https://macromates.com

Desde la configuración instalar comando `mate`.

Karabiner abre una nueva instancia con CapsLock + m.

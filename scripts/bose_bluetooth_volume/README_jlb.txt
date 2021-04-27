Con el `get_device_id.py` se consigue el comando completo para comunicarse con los auriculares.

Lo ejecuté con python 2.7


Hay que instalar `pip`
```
sudo apt install python-pip                                                       
```
y después ejecutar 
```
pip install pulsectl
```

En caso de cambiar de compu, volver a ejecutar y cambiar la función `command` del archivo `volume.rb`

Para instalarlo en la nueva compu:
```
sudo ln -s /home/juanlb/Dropbox/bose_bluetooth_volume/volume.rb /usr/local/bin/vol 
```

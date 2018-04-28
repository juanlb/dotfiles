EXTERNO=$(xrandr --query | grep "^DP1 connected")

# El if tiene dos veces el mismo comando para deshabilitar esta funcion

if [ -z "$EXTERNO" ]
then
gsettings set org.gnome.desktop.interface text-scaling-factor 1.4
echo "Monitor no conectando, usando escala de 1.4 para display 13' "
else
gsettings set org.gnome.desktop.interface text-scaling-factor 1.4
echo "Monitor CONECTADO, usando escala de 1 para no espiar la pantalla :-P"
fi

FACTOR=$(gsettings get org.gnome.desktop.interface text-scaling-factor)


killall chrome


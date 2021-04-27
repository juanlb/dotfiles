from pulsectl import Pulse
import subprocess

# diff applies to non-BT Pulse devices
diff = 0.1
method = 'org.bluez.MediaControl1.Volume{}'.format(
  'Down' if diff < 0 else 'Up')

with Pulse() as pulse:
  for sink in pulse.sink_list():
    bluez_path = sink.proplist.get('bluez.path')
    if bluez_path:
        args = [
            'dbus-send', '--system', '--print-reply',
            '--dest=org.bluez', bluez_path, method,
        ]
        print args

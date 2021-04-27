#!/home/juanlb/.rbenv/shims/ruby

class VolumeManager
  VOLUME_RANGE = 25

  def device_id
    '/org/bluez/hci0/dev_2C_41_A1_81_03_01'
  end

  def command
    "dbus-send --system --print-reply --dest=org.bluez #{device_id} org.bluez.MediaControl1"
  end

  def change_volume(direction, times)
    times = times || 1
    times.times do
      `#{command}.#{direction}`
    end
  end

  def volume_up(times)
    change_volume(:VolumeUp, times)
  end

  def volume_down(times)
    change_volume(:VolumeDown, times)
  end

  def volume_max
    volume_up(VOLUME_RANGE)
  end

  def volume_min
    volume_down(VOLUME_RANGE)
  end
end

def show_use
  puts 'use:'
  puts '  u, up [value]  : up 1 o value the volume'
  puts '  d, down [value]: down 1 o value the volume'
  puts "  min            : down #{VolumeManager::VOLUME_RANGE} the volume"
  puts "  max            : up #{VolumeManager::VOLUME_RANGE} the volume"
end

change_vol_params = ['u', 'up', 'd', 'down']
all_params        = change_vol_params + ['max', 'min', nil]

if not all_params.include?(ARGV[0])
  puts "'#{ARGV[0]}' no es un argumento valido"
  exit
end  

if ['u', 'up', 'd', 'down'].include? ARGV[0]
 amount = ARGV[1].nil? ? nil : ARGV[1].to_i
end

if amount == 0
  puts "'#{ARGV[1]}' no es un argumento valido"
  exit
end

vm = VolumeManager.new
case ARGV[0]
  when nil
    show_use
  when 'max'
    vm.volume_max
  when 'u', 'up'
    vm.volume_up(amount)
  when 'd', 'down'
    vm.volume_down(amount)
  when 'min'
    vm.volume_min
end


require 'serialport'
time = Time.now.to_i

sp = SerialPort.new "/dev/ttyACM0", 9600

sp.write time 

sp.close

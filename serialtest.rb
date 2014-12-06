require 'serialport'

sp = SerialPort.new "/dev/ttyACM0", 9600

while input = gets.chomp
	sp.write input
end

sp.close
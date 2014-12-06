require 'serialport'
require 'unimidi'
load 'note.rb'

sp = SerialPort.new "/dev/ttyACM0", 9600
midi = UniMIDI::Input.first

midi.open do |input|
  loop do
    message = input.gets
    notes = Transcribe.message_to_notes(message)

    note_string = ''
    notes.each{|n| 
    	note_string += n.letter + " "
    }
    if note_string.length > 1
    	puts note_string
    	sp.write note_string
    end
  end
end

sp.close
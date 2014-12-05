#
# This example writes "Hello World!" in the display
#
require 'bundler/setup'
require 'dino'

board = Dino::Board.new(Dino::TxRx::Serial.new)
lcd = Dino::Components::LCD.new(
    board: board,
    pins: { rs: 8, enable: 9, d4: 4, d5: 5, d6: 6, d7: 7 },
    cols: 16,
    rows: 2
)

lcd.clear
lcd.puts("Hello World!")
sleep 2
#lcd.setLCDCursor(0,1)
lcd.clear
lcd.puts("This is awesome.")
sleep 2
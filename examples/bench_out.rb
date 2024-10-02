require 'gpiod'

GPIO_CHIP = 0
PIN       = 17
COUNT     = 1000000

# Always opens gpiochip0 for now.
GPIOD.open_chip
GPIOD.open_line_output(PIN)

t1 = Time.now
COUNT.times do
  GPIOD.set_value(PIN, 1)
  GPIOD.set_value(PIN, 0)
end
t2 = Time.now

puts "Toggles per second: #{COUNT.to_f / (t2 - t1).to_f}"

GPIOD.close_line(PIN)
GPIOD.close_chip

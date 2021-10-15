require_relative 'lib/game'

# 3 Frame Game Example

bowling = Game.new
bowling.roll 10
bowling.roll 5
bowling.roll 5
bowling.roll 9
bowling.roll 0

puts bowling.score
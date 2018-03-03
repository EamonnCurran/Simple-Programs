# Flip-a-Coin.rb
# Simple Programs
#
# Copyright © 2018 Ethan Dye. All rights reserved.

puts 'Welcome to Flip a Coin!'
puts 'How many coins do you want flipped?'
flips = gets.to_i
$headsStreak = 0
$headsStreakMax = 0
$tailsStreak = 0
$tailsStreakMax = 0

def updateTailsStreak()
  # Updates tails streak
  if $tailsStreak >= $tailsStreakMax
    $tailsStreakMax = $tailsStreak
  end
end

def updateHeadsStreak()
  # Updates heads streak
  if $headsStreak >= $headsStreakMax
    $headsStreakMax = $headsStreak
  end
end

def flipACoin(flips)
  # Flips a coin
  heads = 0
  tails = 0
  for i in 1..flips
    result = rand(2)
    if result == 1
      heads += 1
      $headsStreak += 1
      puts 'Heads'
      updateTailsStreak()
      $tailsStreak = 0
    else
      tails += 1
      $tailsStreak += 1
      puts 'Tails'
      updateHeadsStreak()
      $headsStreak = 0
    end
  end
  updateHeadsStreak()
  updateTailsStreak()
  puts 'Flipped ' + heads.to_s + ' heads and ' + tails.to_s + ' tails!'
  puts 'The longest streak of heads in a row was: ' + $headsStreakMax.to_s
  puts 'The longest streak of tails in a row was: ' + $tailsStreakMax.to_s
end

flipACoin(flips)

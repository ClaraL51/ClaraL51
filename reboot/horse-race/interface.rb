# Pseudo-code:
# 1. Print welcome
print "Welcome! Here are the horses:"
# 2. Get horses 🐴
horses = ["horse 1", "Peggy", "Tomato", "Pedrito"]

## Only display the names::
  # horses.each do |horse|
  #   puts horse
  # end

## display index + 1 - horse
horses.each_with_index do |horse, index|
  puts "#{index + 1} - #{horse}"
end

# 3. Get user's bet
puts "What is your bet?"
user_bet = gets.chomp

# 4. Run the race 🐴
winner = horses.sample

# 5. Print results
puts "The winner is #{winner}"
puts user_bet == winner ? "You win the bet!" : "You lost the best"


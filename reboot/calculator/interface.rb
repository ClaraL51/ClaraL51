require_relative "calculator"

#1 declare a starting point

operator = nil

# create while loop
while operator != ""
  #2 get numbers from user
  puts "Enter a first number:"
  p first_number = gets.chomp

  puts "Enter a second number:"
  p second_number = gets.chomp

  #3 Ask user for operator
  puts "Choose operator (+, -, * or /)."
  operator = gets.chomp

  print "result: "
  puts calculator = calculate(first_number.to_i, second_number.to_i, operator)
end

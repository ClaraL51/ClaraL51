#welcome message
puts "Welcome to Instacart!"

# display list of available items and their price
cart = []
store = {
  kiwi: 1.25,
  apple: 1,
  milk: 2,
  ham: 3,
}

store.each do |item, price|
  puts "#{item} is #{price} $."
end

# while + get user input
  # item in store => store item in the cart
  # item not in store => display "not in store"
  # want to checkout => go to checkout
choice = nil
until choice == ""
  puts "Which item do you buy?" if cart == []
  puts "Any other item? Do you want to checkout?" if cart != []
  choice = gets.chomp

  if store.has_key?(choice.to_sym)
    cart << choice
  elsif choice == ""
    puts "Lets checkout"
  else
    puts "Not available"
  end
    p cart
end

# checkout => display totale
puts 'store has: ' + store.to_s

total = 0

cart.each do |choice|
  total += store[choice.to_sym]
  puts "Choice is #{choice.to_sym} for a price of #{store[choice.to_sym]}"
end

puts "The total of your purchases is #{total}"




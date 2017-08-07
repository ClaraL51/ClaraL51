# Pseudo-code:
# 1. Welcome
puts "Welcome to your gift list!"
# 2. Display menu (list / add / delete / mark )
giftlist = {}
action = nil

until action == "quit"
puts "Which action [list|add|delete|mark|quit]?"
action = gets.chomp

# 3. Get user action
  if action == "list"
    giftlist.each_with_index do |item, index|
      puts "[] - #{index + 1 } #{item[0]}" if item[1] == false
      puts "[X] - #{index + 1 } #{item[0]}" if item[1] == true
    end
    puts giftlist.empty? ? "List is empty" : "End of the list"

  elsif action == "add"
    puts "Which item do you want to add?"
    item = gets.chomp
    giftlist[item] = false

  elsif action == "delete"
    puts "Which item do you want to delete?"
    item = gets.chomp
    giftlist.delete(item)

  elsif action == "mark"
    puts "Which item have you bought (give the index)?"
    item = gets.chomp
    giftlist[item] = true


  elsif action == "quit"
    puts "Goodbye!"

  else puts "Error. This option is not available."
  end
end

# 4. Perform the right action

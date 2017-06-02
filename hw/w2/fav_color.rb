# Write a program that asks the user for their favorite color.
# If the user answers blue OR green, the program tells the user “Good choice.
# That is a great color!” Otherwise, the program says “Really?” and
# then goes on to tell the user that that color (the program mentions the color by name)
# is really not its favorite.

puts "What is your favorite color?"
user_fav = gets.chomp.downcase

if user_fav == "blue" || user_fav == "green"
  puts "Good choice. That is a great color!"
else
  puts "Really? #{user_fav} is not my favorite"
end
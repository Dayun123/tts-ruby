# Write a program that asks for the user’s first name and then last name.
# Then, have the program repeat back the full name as well as how many letters
# are in the user’s full name.

puts "What is your first name?"
first_name = gets.chomp

puts "What is your last name?"
last_name = gets.chomp

full_name = "#{first_name} #{last_name}"
name_wo_spaces = full_name.tr(' ', '')

puts "Your full name is #{full_name}. The length is #{name_wo_spaces.length}"
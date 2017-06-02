# Write a bartender program that asks us our order.
# Then, let’s have it ask how old we are. If you answer 21 or over, you’re good to go.
# If you are under 21, the program (bartender) tells you how many years
# you’ll need to wait until you’re legal.

legal_age = 21

puts "(Bartender): What are ya havin' kid?"
order = gets.chomp.downcase

puts "(Bartender): Sure, sure, you can have #{order}."
puts "(Bartender): Hey, how old are you anyway?"
user_age = gets.chomp.to_i

if user_age >= legal_age
  puts "(Bartender): Sounds good, one #{order} comin' right up!"
else
  puts "(Bartender): Sorry kid, come back when you're #{legal_age}"
end
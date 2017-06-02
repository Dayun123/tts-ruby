# Write a program that asks the user to do some simple arithmetic
# (let’s say 1 + 2, and 5 - 3) and lets them know if they got the question right.

answer = 5

puts "What is 2 + 3?"
user_answer = gets.chomp.to_i

if user_answer == answer
  puts "Good job, that's correct!"
else
  puts "Sorry, the answer was #{answer}"
end
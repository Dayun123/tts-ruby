# Write a program that takes a string argument and:

# outputs the string in reverse
# outputs the string in all caps
# tells you the length of the string

puts "Type any sentence:"
sentence = gets.chomp

puts "The sentence reversed is #{sentence.reverse}"
puts "The sentence in all caps is #{sentence.upcase}"
puts "The length of the sentence is #{sentence.length}"
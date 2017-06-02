# When dividing numbers in Ruby, what if we want to include the remainder as well? Write a program that:

# asks for two integers
# divides the first by the second
# returns the result including the remainder
# (Optional: we learn this in the next lesson)

# If either of the numbers is not an integer, then don’t accept the number and ask again.
# (Optional: we learn this in the next lesson)

# Do not accept zero (0) as a number.

def validate_input(input)
  until (input != 0) do
    print "#{input} is not a valid integer, please enter a non-zero integer: "
    input = gets.chomp.to_i
  end
  input
end

print "Enter first non-zero integer: "
int_1 = validate_input(gets.chomp.to_i)

print "Enter second non-zero integer: "
int_2 = validate_input(gets.chomp.to_i)

result = int_1 / int_2
remainder = int_1 % int_2

puts "The result of #{int_1} / #{int_2} = #{result}"
puts "The remainder of #{int_1} % #{int_2} = #{remainder}"

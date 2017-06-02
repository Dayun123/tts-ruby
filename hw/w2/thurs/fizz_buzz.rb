# Fizz Buzz app: Make a simple app that counts to 100, but does the following things:

# if the number is divisible by 3, print Fizz

# if the number is divisible by 5, print Buzz

# if both, print FizzBuzz

# otherwise print the number


def fizz_buzz(num)
  if (num % 3 == 0) && (num % 5 == 0)
    puts "FizzBuzz"
  elsif num % 3 == 0
    puts "Fizz"
  elsif num % 5 == 0
    puts "Buzz"
  else
    puts num
  end
end

(1..100).each do |num|
  fizz_buzz(num)
end
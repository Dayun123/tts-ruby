# Did your brother or sister ever copycat everything you said just to get
# under your skin? Man, was that annoying or what?! Let’s write a program
# that does the same thing. This annoying program can only be stopped if
# the user says “I’m a dummy” because the program won’t repeat something so self deprecating!

def annoying
  puts "\n(Annoying Bro): Whats up?"
  print "(You): "
  response = gets.chomp
  puts "(Annoying Bro repeats, annoyingly...): #{response}"
  response
end

user_response = ""

until user_response == "I'm a dummy"
  user_response = annoying
end
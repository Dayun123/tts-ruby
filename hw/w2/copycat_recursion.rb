
def copycat
  puts "Hey, what's up?"
  answer = gets.chomp
  unless answer == "I'm a dummy"
    puts answer
    copycat
  end
end

copycat
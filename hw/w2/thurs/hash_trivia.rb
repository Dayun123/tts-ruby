# Questions and Answers
questions = {
  "Who sang 'Smells Like Teen Spirit'?": "nirvana",
  "Which actor played Jason Bourne?": "matt damon",
  "Who is NOT Michael Jackson's lover?": "billie jean"
}

system("clear")

puts

puts "*******************************"
puts "*******************************"
puts "Welcome to Daniel's Trivia App!"
puts "*******************************"
puts "*******************************"

puts

sleep(2)
system("clear")

puts "Let's get started"

sleep(2)
system("clear")

score = 0


# Ask Questions
# Get the answer
# Check the answer
# Tell them if it's right
questions.each do |question, answer|
  print "#{question} "
  user_answer = gets.chomp.downcase
  if user_answer == answer
    puts "That's right!"
    score += 1
  else
    puts "That's not correct!"
  end
  puts
end

if score > 1
  # Say thanks for playing at the end
  puts "Thanks for playing, your score was #{score} out of #{questions.length}, you rock!"
else
  puts "Aw, your score was only #{score} out of #{questions.length}, better luck next time!"
end
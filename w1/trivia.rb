# Hash of questions and answers
q_and_a = {
  "What instrument does John Coltrane play?" => "saxophone",
  "How many symphonies did Beethoven write?" => "9",
  "How many eggs are in a dozen?" => "12"
}

# Loop through questions, asking the user each one
# and compare with the answers
q_and_a.each do |question, answer|
  puts question
  user_answer = gets.chomp.downcase
  if user_answer == answer
    puts "That's correct!"
  else
    puts "Sorry, the answer was #{answer}"
  end
end

puts "Thanks for playing trivia!"
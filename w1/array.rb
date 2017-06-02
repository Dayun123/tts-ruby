scores = [100, 80, 75, 93]
sum = 0

# scores.each do |score|
#   sum += score
# end

scores.each { |score| sum += score }

# average = sum.to_f / scores.length

puts "The sum of #{scores} is #{sum}"
puts "The average of #{scores} is #{average = sum.to_f / scores.length}"
puts average
def imp_to_met(factor, measurement)
  case factor
  when 'in'
    measurement * 2.54
  when 'lbs'
    measurement * 0.45
  end
end

print "Enter your name: "
user_name = gets.chomp

# Get user's weight and height
print "Enter your weight in lbs: "
user_weight_lbs = gets.chomp.to_i

print "Enter your height in in: "
user_height_in = gets.chomp.to_i

# Convert user's weight and height to metric
weight_kg = imp_to_met('lbs', user_weight_lbs)
height_cm = imp_to_met('in', user_height_in)

# Display this to the user
puts "#{user_name}, your weight in metric is #{weight_kg} kgs"
puts "#{user_name}, your height in metric is #{height_cm} cm"

# Write a program that chooses an appropriate greeting based on the time of day.

def greeting
  current_time = Time.new.hour
  if current_time >= 20
    puts "Good night!"
  elsif current_time >= 17
    puts "Good evening!"
  elsif current_time >= 12
    puts "Good afternoon!"
  else
    puts "Good morning!"
  end
end

greeting
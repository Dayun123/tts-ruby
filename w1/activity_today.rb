def pick_activity

  puts "What is todays temperature?"
  temp = gets.chomp.to_i

  if (temp > 110) || (temp < 20)
    puts "#{temp} degrees seems a little ridiculous for New Orleans!"
    pick_activity
  elsif temp >= 80
    puts "#{temp} degrees is perfect for swimming!"
  elsif temp > 50
    puts "#{temp} degrees sounds excellent for hiking!"
  else
    puts "#{temp} degrees sounds like I'm staying home today!"
  end

end

pick_activity
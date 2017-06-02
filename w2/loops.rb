# i = 0

# while i <= 100
#   puts "#{i}"
#   i += 2
# end

i = 1

while i <= 100
  if (i % 2 == 0)
    puts "#{i} even"
  else
    puts "#{i} odd"
  end
  i += 1
end
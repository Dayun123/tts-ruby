# 1. Write a script that takes user input and passes it to a method as an argument and
# then displays it into the following concatenated string:
# Hello (name).  Nice to meet you.

system("clear")

def hw_helper(question)
  puts
  puts question
  puts
end

question_1 =  "1. Write a script that takes user input and passes it to a method as an argument and
 then displays it into the following concatenated string:
 Hello (name).  Nice to meet you."

hw_helper(question_1)

def greet(name)
  puts "Hello #{name}. Nice to meet you."
end

print "What is your name? "
user_name = gets.chomp

greet(user_name)

# 2. Correct the code below so it displays the sum of x, y, and z:
# def sum_numbers(x,y)
#   x+y+z
# end

question_2 =  "2. Correct the code below so it displays the sum of x, y, and z:
 def sum_numbers(x,y)
   x+y+z
 end"

hw_helper(question_2)

def sum_numbers(x, y, z)
  x + y + z
end

puts "Sum of 1 + 2 + 3 is : #{sum_numbers(1, 2, 3)}"

# 3. Add to the code below so it displays "Don't forget to (to do item)." for each item.
# to_do = ["wash car", "buy groceries", "finish homework", "pay bills"]

question_3 = "3. Add to the code below so it displays 'Don't forget to (to do item).' for each item.
 to_do = ['wash car', 'buy groceries', 'finish homework', 'pay bills']"

hw_helper(question_3)

to_do = ["wash car", "buy groceries", "finish homework", "pay bills"]
to_do.each do |item|
  puts "Don't forget to #{item}."
end

# 4. What is the return value of the following:
# def avg(a, b, c, d)
#   total = a + b + c + d
#   avg = total / 4
#   return c + d
# end
#
# avg(5, 8, 6, 10) #=> 16

question_4 = "4. What is the return value of the following:
def avg(a, b, c, d)
  total = a + b + c + d
  avg = total / 4
  return c + d
end

avg(5, 8, 6, 10)"

hw_helper(question_4)

puts "avg returns c + d, which is 6 + 10, so it returns 16"

# 5. What is the return value of the following:
# names = ['David', 'Trevor', 'Sarah', 'Mason']
#
# names[2] #=> "Sarah"

question_5 = "5. What is the return value of the following:
names = ['David', 'Trevor', 'Sarah', 'Mason']

names[2]"

hw_helper(question_5)

puts "names[2] will be 'Sarah'"

# 6. How do you add "bobcat" to this list of wild cat species?
# wild_cats = ['cheetah', 'lion', 'leopard', 'tiger']

question_6 = "6. How do you add 'bobcat' to this list of wild cat species?
wild_cats = ['cheetah', 'lion', 'leopard', 'tiger']"

hw_helper(question_6)

wild_cats = ['cheetah', 'lion', 'leopard', 'tiger']

wild_cats << 'bobcat'

puts "Check out the list, I added a bobcat!"
p wild_cats

# 7. How do you retrieve the birthplace of user1?
# user1 = {
#   :firstname=> "Johnny",
#   :lastname => "Begood",
#   :gender => "male",
#   :dob => "08/21/1981",
#   :birthplace => "Seattle, WA"
# }

question_7 = "7. How do you retrieve the birthplace of user1?
user1 = {
  :firstname=> 'Johnny',
  :lastname => 'Begood',
  :gender => 'male',
  :dob => '08/21/1981',
  :birthplace => 'Seattle, WA'
}"

hw_helper(question_7)

user1 = {
  :firstname => "Johnny",
  :lastname => "Begood",
  :gender => "male",
  :dob => "08/21/1981",
  :birthplace => "Seattle, WA"
}

puts "User1's birthplace is #{user1[:birthplace]}"

# 8. How do you add "Atlanta, GA " as the current city for
# user1 in the hash from question 7?

question_8 = "8. How do you add 'Atlanta, GA' as the current city for
user1 in the hash from question 7?"

hw_helper(question_8)

user1[:current_city] = "Atlanta, GA"

puts "User1's current city is #{user1[:current_city]}"

# 9. How would you retrieve "y" in the following array?
# alpha_soup= ["c", "k", "y", "u"]

question_9 = "How would you retrieve 'y' in the following array?
alpha_soup= ['c', 'k', 'y', 'u']"

hw_helper(question_9)

alpha_soup = ['c', 'k', 'y', 'u']
puts "y is found at alpha_soup[2], see: #{alpha_soup[2]}"

# 10. How would you retrieve "14" in the following hash?
# alphabits= {"d" =>4, "k" => 14, "u" => 52}

question_10 = "How would you retrieve '14' in the following hash?
alphabits= {'d' =>4, 'k' => 14, 'u' => 52}"

hw_helper(question_10)

alphabits = {'d' => 4, 'k' => 14, 'u' => 52}
puts "You retrieve 14 by running alphabits['k'] like so: #{alphabits['k']}"

# 11. Write a loop that continues to display random numbers between 1
# and 10 until the number generated is 7.

question_11 = "Write a loop that continues to display random numbers between 1
and 10 until the number generated is 7."

hw_helper(question_11)

loop do
  num = rand(10) + 1
  puts num
  break if num == 7
end

# 12. Continuing from question 11 above, push each randomly generated number to an array.
# Then use an each loop and a conditional statement inside to display the total amount
# of numbers that are under 6.  Then display a statement that reads: 'There are (total) numbers under 6.'

question_12 = "Continuing from question 11 above, push each randomly generated number to an array.
Then use an each loop and a conditional statement inside to display the total amount
of numbers that are under 6.  Then display a statement that reads: 'There are (total) numbers under 6.'"

hw_helper(question_12)

rand_arr = []

def total_num_less_six(arr)
  total = 0
  arr.each do |el|
    total += 1 if el < 6
  end
  total
end

loop do
  num = rand(10) + 1
  rand_arr << num
  if num == 7
    total = total_num_less_six(rand_arr)
    puts "Random numbers: "
    p rand_arr
    puts "\nThere are #{total} numbers under 6 in the list of random numbers."
    break
  end
end

# Write a Secret Santa app that takes a list of people and outputs matches for Secret Santa gift-giving.

# Simulates shuffling the hat of names until the name drawn is not
# the same as the person drawing from the hat.
def shuffle_hat(the_hat, person)
  while the_hat.last == person
    the_hat.shuffle!
  end
  the_hat.pop
end

# Simple switcheroo routine
def switch_partners(partners, prev_person, the_hat, person)
  temp = partners[prev_person]
  partners[prev_person] = the_hat.pop
  partners[person] = temp
end

puts "Enter the names of people that want to participate in Secret Santa."

answer = ''
people = []

# loop through and fill people with Secret Santa participants
until answer.downcase == 'done'
  print "Enter a name or 'done' to quit: "
  answer = gets.chomp
  people << answer unless answer.downcase == 'done'
end

# the hat represents the people you put in the hat for secret santa
# use dup to make sure that the_hat and people doesn't point to the
# same array, so you don't end up modifying one array below!
the_hat = people.dup
people.shuffle!

# will hold the pairings of Secret Santa partners
partners = {}

# used to hold the last name entered
prev_person = ''

# Simulates each person drawing a name from the hat
people.each do |person|
  # if the person pulls there own name out of the hat
  if the_hat.last == person
    if prev_person == ''
      # if they were the first person to go, shuffle the hat till they get
      # a name besides their own
      last_el_hat = shuffle_hat(the_hat, person)
      partners[person] = last_el_hat
    else
      # have them switch partners with the last person to draw from the hat
      switch_partners(partners, prev_person, the_hat, person)
    end
  else
    partners[person] = the_hat.pop
  end
  # regardless of what craziness goes on above, we need to know
  # who the previous person was that drew a name from the hat,
  # so do this outside any conditional
  prev_person = person
end

partners.each do |person1, person2|
  puts "#{person1} is paired with #{person2}"
end

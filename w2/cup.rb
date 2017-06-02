class Cup

  def initialize
    puts "I'm alive!!!"
    # @amount is a percent
    @drink_amount = 0
  end

  def fill
    puts "I'm filled up!"
    @drink_amount = 100
  end

  def empty
    puts "All gone."
    @drink_amount = 0
  end

  def peek_inside
    puts "You have #{@drink_amount} left"
    @drink_amount
  end

  def sip(amount = 10)

    if amount < 0
      puts "Backwash is gross, ain't nobody got time for that!"
    elsif amount > @drink_amount
      puts "Mmmmm  delicious!"
      self.empty
    else
      @drink_amount -= amount
    end
  end

end


require './cup.rb'

class MojoCup < Cup

  def initialize
    super
    puts "Welcome to Mojo Coffee"
  end

end

MojoCup.new
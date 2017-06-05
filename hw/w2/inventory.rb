# Inventory App
# Create a program that:

# Is built around a class and methods for that class.

# Lists several items.

# Allows a user to select an item and view the inventory count, 
# change the number of the inventory, delete the item altogether, or even change the name.

# Create a new item and give the item an inventory count, and have 
# this item now show up in the list of items you can select.

# Loops through until the user does not want to edit the list anymore

# Inventory deals with storing the items, listing the items, and updating
# the item quantities. Minimal data validation is added, could be a lot
# more robust if you wanted to come back and tighten this up!
class Inventory

  def initialize
    @items = {}
  end

  def add_item(item, quantity)
    if @items.include?(item)
      puts "\n***Can't add #{item}! It is already in the inventory!***"
    else  
      @items[item] = quantity
    end
  end

  def list_items
    if @items.length == 0
      puts "\n***No items to list!***"
    else
      puts "\n******** INVENTORY *********"
      @items.each do |item, quantity|
        puts "#{item}: #{quantity}"
      end
      puts "****************************"
    end
  end

  def update_item_quantity(item, quantity)
    if @items.include?(item)
      @items[item] = quantity
    else
      puts "\n***#{item} is not in the inventory!***"
    end
  end

  def delete_item(item)
    if @items.include?(item)
      @items.delete(item)
    else
      puts "\n***#{item} is not in the inventory!***"
    end
  end

end

# App will handle all the user interaction with the inventory object.
# It is responsible for displaying a menu to the user and handling the
# user's responses. The App calls the appropriate inventory methods
# based on the user's selections.
class App

  def initialize(inventory)
    @options = [
      'List Inventory Items',
      'Add Inventory Item',
      'Delete Inventory Item',
      'Update Inventory Item Quantity'
    ]
    @inventory = inventory
  end

  def print_options
    i = 1
    puts "\nEnter option to proceed, 'exit' to quit."
    @options.each do |option|
      puts "#{i}: #{option}"
      i += 1
    end
    print "\nYour choice: "
  end

  def parse_option(option)
    case option
    when '1'
      @inventory.list_items
    when '2'
      prompt_add_item
    when '3'
      prompt_delete_item
    when '4'
      prompt_update_item
    when 'exit'
      puts "L8r G8r"
      exit
    else
      puts "\n***Invalid option!***"
    end
  end

  def prompt_update_item
    @inventory.list_items
    print "\nEnter the name of the item to update: "
    item = gets.chomp
    print "Enter the new quantity: "
    quantity = gets.chomp.to_i
    @inventory.update_item_quantity(item, quantity)
  end

  def prompt_delete_item
    @inventory.list_items
    print "\nEnter the item name to delete: "
    @inventory.delete_item(gets.chomp)
  end

  def prompt_add_item
    print "\nEnter item name: "
    item = gets.chomp
    print "Enter item quantity: "
    quantity = gets.chomp.to_i
    @inventory.add_item(item, quantity)
  end

end

#### MAIN PROGRAM ####

inv = Inventory.new
app = App.new(inv)

loop do 
  app.print_options
  app.parse_option(gets.chomp)
end

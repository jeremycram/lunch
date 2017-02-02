require 'pry'

@order = []
@main = [
  { name:'meatloaf', price: 3.50 },
  { name: 'cheeseburger', price: 2.25 },
  { name:'katsu', price: 3.00 }]

@side = [
    { name: 'frys', price: 1.50},
    { name: 'mashed potatoes', price: 1.00},
    { name: 'chips', price: 0.15}]


def lunch_lady
  puts 'pick a main dish'
  @main.each_with_index do |dish, i|
    puts "#{i + 1} #{dish[:name]} #{dish[:price]}"
  end
  input = gets.strip.to_i - 1
  if input == -1
    puts 'Invalid option'
    lunch_lady
  else
    @order << @main[input]
    side_menu
  end
end

def side_menu
  puts 'pick a side dish'
  @side.each_with_index do |dish, i|
    puts "#{i + 1} #{dish[:name]} #{dish[:price]}"
  end
  input = gets.strip.to_i - 1
  if input == -1
    puts 'Invalid option'
    side_menu
  else
    @order << @side[input]
  end
  puts 'Would you like another side dish?'
  input = gets.chomp.downcase
  if input == 'y' || input == 'yes'
    side_menu
  else
    print_order
  end
end

def print_order
  dishes = ''
  price = 0.0
  @order.each_with_index do |dish, i|
    dishes += dish[:name]
    dishes += ', ' unless i == @order.length - 1
    price += dish[:price]
  end

  puts "Your order: " + dishes
  puts "Total: $#{price}"
end

lunch_lady

require 'pry'

@main = [
  { dish:'meatloaf', price: 3.50 },
  { dish: 'cheeseburger', price: 2.25 },
  { dish:'katsu', price: 3.00 }
]

def lunch_lady
  puts 'pick a main dish'
  @main.each do |dish|
    puts "#{dish[:dish]} #{dish[:price]}"
    input = gets.strip

  end

end

@side = [
  { dish: 'frys', price: 1.50}
  { dish: 'mashed potatoes', price: 1.00}
  { dish: 'chips', price: .15}

end


]

lunch_lady

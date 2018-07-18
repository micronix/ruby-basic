inventory = {}

def current(inventory, product)
  # write code that returns the current inventory for the given product
end

def stock(inventory, product, quantity)
  # add code that add more of that product to the inventory, quantity is the parameter that tells you how much more
end

def sell(inventory, product, quantity)
  # remove quantity of product from inventory
end

puts "You can show, buy or sell or quit"
while true
  print "what would you like to do? "
  op = gets.chomp
  if !['quit', 'show', 'sell', 'stock'].include?(op)
    next
  end
  if op == "quit"
    exit
  end
  print "what product? "
  product = gets.chomp
  if op == "show"
    puts "There are #{current(inventory, product)} of #{product}"
  else
    print "How many? "
    quantity = gets.chomp.to_i
    if op == "sell"
      sell(inventory, product, quantity)
    elsif op == "stock"
      stock(inventory, product, quantity)
    end
  end
end

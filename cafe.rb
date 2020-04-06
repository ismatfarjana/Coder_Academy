# Implement a simple cafe app with a combination of concepts learnt so far and keeping the code DRY.
# Example: 
# Lattes sell for $4, 
# Scones sell for $5, 
# Tea sells for $3.

# Write a program that asks the user for their order.
# Allow the user to input mutiple items and to specify quantities.
# When the order is complete:
#   Print the final order
#   Print the total bill

def print_options
  puts  "1.Lattes sell for $4,"
  puts  "2.Scones sell for $5,"
  puts  "3.Tea sells for $3."
end

def print_order(order_hash)
  items = order_hash.map {|k, v| "#{v} #{$item_names[k]}"}.join(',')
  puts "You have ordered #{items}"
  # Example -> You have ordered 5 lattes, 2 Scones, 3 Teas
 # write the code to print the order to show the 		customer what he/ she has ordered and how much of 		each.
end

def get_order(order_hash)
   # Hint : create a new hash here called order_hash to which you can add the quantities as and when the user inputs them.
   # this method returns the order_hash which is the argument to the calculate_total_bill method.

   print_options
   puts "What do you want today? "
   order_name = gets.chomp.to_s
   
   puts " How many #{order_name}? "
   order_count = gets.chomp.to_i
   
   order_hash[order_name] = order_count

   puts "Do you want to order more? y for order more, n for print order"
   response = gets.chomp.downcase

   return get_order(order_hash) if response == 'y'

   print_order(order_hash)
   order_hash
end

def calculate_total_bill(order_hash)
  order_hash.map {|k, v| $cost_price[k] * v}.sum
end

# Declare global variables like the 2 hashes : cost_price and item_names which store the price for each item and also the full name of that item
$cost_price = {"l" => 4, "s" => 5, "t" => 3}
$item_names = {"l"=> "Latte", "s"=> "Scone", "t"=> "Tea", "q"=> "Quit"}

def main
  puts "Hello, welcome to CAFE ALPACHINO!"
  puts "Here is our menu: "

  order_hash = {}

  orders = get_order(order_hash)
   
  puts "Here is your total bill : #{calculate_total_bill(orders)}"
  # Example - Here is your total bill : 120
end

main


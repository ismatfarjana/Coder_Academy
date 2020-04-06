fruits = {"banana" => 2, "orange" => 2.5, "avocado" => 2.45}
puts fruits.transform_keys!(&:to_sym)


fruits[:guava] = 5
puts fruits 

fruits[:avocado]= 3
puts fruits

fruits.delete(:orange) 
puts fruits


veggies = {:carrot => 1.75, :celery => 2.75, :kale => 4}

inventory = fruits.merge(veggies)
puts inventory


inventory.each {|k, v| puts "Item: #{k} Cost: $#{v}"}

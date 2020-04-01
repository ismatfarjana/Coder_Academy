eating_in = {:Breakfast => "Yoghurt & Museli", :Lunch => "Sandwich", :Dinner => "Curry & Rice"  }
p eating_in.each {|key, value| (puts "The #{key} is #{value}") }
p "-"*80
p eating_in.map {|key, value| (puts "The #{key} is #{value}") }
p "-"*80
p eating_in.each_key {|key| (puts "The key is #{key}!") }
p "-"*80
p eating_in.each_value {|value| (puts "The value is #{value}!") }
p "-"*80
#increased their prices by 10%
eating_out = {:Breakfast => 12, :Lunch => 15, :Dinner => 25 }
puts eating_out.map {|k,v| [k,((v * 10).to_f/100)]}.to_h
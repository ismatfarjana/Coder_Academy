puts " What is todays temp in celsious?"
temp = gets.chomp
fahrenheit = (temp.to_f*9/5)+32
puts "The temp in fahrenheit is #{fahrenheit}!"
#raning
raining = true
temp = 15
if raining && temp <15
	print "It's wet and cold"
elsif !raining && temp <15
	print "It's not raining but cold"
elsif !raining	 && temp > 15
	print "It's warm but raining"
else "It's warm and not raining"
end	

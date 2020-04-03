p " Hi, what is the temperature today?"
temp = gets.chomp.to_i
 case temp
	 when temp< 15
	  print "It's too cold"
	 when temp >= 15 && temp <= 28
	  print "It's beautiful today"
 else temp > 28 
	 print "It's too hot"
 end 
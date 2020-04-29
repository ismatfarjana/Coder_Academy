def bye_bye_3_and_5(num)
	array = (1..num).to_a
	if num == 0
		p []
	else num>0
	new_array = array.map { |number| p number if (number % 3 != 0) && (number % 5 != 0) }
	new_array.compact!
	end	
end
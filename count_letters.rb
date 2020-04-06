def count_letters(string)
	p array = string.scan(/[^\s]/)
	 p array.tally
end
count_letters("hello")
count_letters("Thats The Ticket")
count_letters("")
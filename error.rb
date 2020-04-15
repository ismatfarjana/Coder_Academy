def print_num_letters(words)
	words.map {|word| check_invalid_word(word)}
end

def check_invalid_word(word)
    begin
       raise ArgumentError unless word.is_a?(String)
       p "The word #{word} has #{word.length} letters in it." 
    rescue ArgumentError
        puts "Invalid word given: #{word}"
    end
end



print_num_letters(['apple', 'school', 3, "blue", "cloud"]) 

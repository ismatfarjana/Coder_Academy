prime_numbers = []
given_array = (1..100).to_a
given_array.each do |number|
  divisible_count = 0
  numbers_from_1 = (1..number).to_a
  numbers_from_1.each do |n|
    if number % n == 0
      divisible_count += 1
    end
  end
  if divisible_count == 2
    prime_numbers << number
  end
end
p prime_numbers

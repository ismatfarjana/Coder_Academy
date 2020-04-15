def divide(num1, num2)
  puts "result is #{num1/num2}"
end

puts "enter two numbers"
num1 = gets.chomp.to_i
num2 = gets.chomp.to_i

begin
  divide(num1, num2)
rescue ZeroDivisionError
   p "cannot divide a number by zero"
end

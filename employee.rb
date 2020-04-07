class Employee
	attr_accessor :name,:salary
	
	def initialize(name, salary)
		@name = name
		@salary = salary
	end	
	
# 	def name
# 		@name
# 	end
	
# 	def salary
# 		@salary
# 	end	
end

# employee_1 = Employee.new("Sarah", 20000)
# employee_2 = Employee.new("Ben", 19000)
# employee_3 = Employee.new("Jhon", 19500)

employees = []

puts " Employee list"
puts "-"*50
puts " "*50

def get_data(employees)
  puts "Enter your name?: "
  name = gets.chomp.to_s.capitalize
  puts "Enter your salary?: "
  salary = gets.chomp.to_i
  employee_4 = Employee.new(name, salary)
  employees << employee_4
end


def list(employees)
  puts "**Employee list**"
	puts "-"*50
  employees.map { |employee| p "#{employee.name} - #{employee.salary}"}
	puts "These is the recent updated employee list."
end

def employee_list(employees)
  puts "For adding new employee record, type 'a' for showing the list type 'l'!"
  response = gets.chomp.to_s.downcase



  case response
    when "a"
      get_data(employees)
      employee_list(employees)
    when "l"
      list(employees)
  end	
end

employee_list(employees)
# employee_1 = Employee.new("Sarah", 20000)
# employee_2 = Employee.new("Ben", 19000)
# employee_3 = Employee.new("Jhon", 19500)

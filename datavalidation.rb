class Dog
	attr_reader :name, :weight
	
	def initialize(name, weight)
		# Your code here
		raise ArgumentError, "Error: Weight must not be 0" if weight == 0
    	@name = name
   		@weight = weight
		puts "#{name} has a weight of #{weight}kg."
  	end
	
	
end

dog1 = Dog.new("Cliff", 0)
#dog2 = Dog.new("bo",2)

p dog1
#p dog2

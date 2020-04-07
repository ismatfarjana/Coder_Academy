  
  attr_accessor :name,:age, :weight
  
  def initialize(dog_name, dog_age, dog_weight)
    @name = dog_name
    @age = dog_age
    @weight = dog_weight
    @walk = 0
    puts "I've been initialized!"
  end
	
  def speak
    puts "#{name} says woof! I am #{age} years old."
  end
  
  def get_weight
    puts  "#{name} weighs #{weight} kg."
  end
  
  def walk
    @walk += 1
    self
  end
  def display_walks
    puts  "I have been for #{@walk} walk(s)." 
  end  
  
end

doggo = Dog.new('Waffles', 2, 15)
doggo.speak
pupper = Dog.new('Clifford', 5, 20)
pupper.speak
 doggo.walk
doggo.walk
doggo.display_walks
doggo.walk.walk.walk.walk.display_walks
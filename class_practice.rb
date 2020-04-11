module Towable
  def tow?(pounds)
    pounds > 2000 ? true : false
  end
end




class Vehicle
  attr_accessor :color, :year
  attr_reader  :model
  @@number_of_vehicle  = 0
  def initialize(year,color,model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
    @@number_of_vehicle += 1
  end
  
  def age
    "My #{self.model} is #{year_old} yeras old!"
  end
  
  def number_of_vehicle
    "Total vehicle #{@@number_of_vehicle}"
  end
  
  #class_method

  def self.gas_milage(gallon, mile)
    "#{gallon/mile} gallon per mile."
  end

  # ============

  def speed_up(speed_num)
    @current_speed += speed_num   
    "My car is speeding up to #{@current_speed}"   
  end 


  def break(break_num)
    @current_speed -= break_num
    "My car is speeding down to #{@current_speed}."
  end

  def current_speed
    "Current spped is #{@current_speed}."
  end


  def shut_off
    @current_speed = 0
    "My car is stopping now."

  end 

  def change_info(color)
    @color = color
  end

  def spray_paint(color)
    self.color = color
    "My car is now #{color}!"
  end

  def print
    "color #{color}"
  end

 private

  def year_old
    Time.now.year - self.year
  end

end
 
 class Mycar < Vehicle
  NUMBER_OF_DOOR = 4

  def to_s
    "This car is #{self.model}, #{self.color}, made in #{self.year}."
  end
 end

 class MyTruck < Vehicle
  NUMBER_OF_DOOR = 2
  def to_s
    "This truck is #{self.model}, #{self.color}, made in #{self.year}."
  end

  include Towable
 end

 pippip = Mycar.new(1990, "blue", "gugugags")
 truck = MyTruck.new(2000, "green", "vrumiz")

 
p truck.tow?(1500)
p pippip.current_speed
p pippip.speed_up(200)
p pippip.break(100)
p pippip.change_info("red")
p pippip.spray_paint("green")
p Mycar.gas_milage(10,2)
p pippip.age
p truck.age
puts pippip
puts truck

puts Mycar.ancestors
puts MyTruck.ancestors
puts Vehicle.ancestors

p pippip.number_of_vehicle


class Person
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob"


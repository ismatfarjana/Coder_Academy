 class Mycar
  attr_accessor :color
  attr_reader :year, :model
    def initialize(year,color,model)
      @year = year
      @color = color
      @model = model
      @current_speed = 0
    end  
#class_method

    def self.gas_milage(gallon, mile)
      "#{gallon/mile} gallon per mile."
    end

#to_s

    def to_s
       "My car is #{model}, #{color}, made in #{year}."
    end

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

 end

 pippip = Mycar.new("1990", "blue", "gugugags")
#  p pippip.current_speed
#  p pippip.speed_up(200)
#  p pippip.break(100)
p pippip.change_info("red")
p pippip.spray_paint("green")
p Mycar.gas_milage(10,2)
puts pippip


class Person
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob"
 class Mycar

    def initialize(year,color,model)
      @year = year
      @color = color
      @model = model
      @current_speed = 0
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


 end

 pippip = Mycar.new(1990, "blue", "gugugags")
 p pippip.current_speed
 p pippip.speed_up(200)
 p pippip.break(100)
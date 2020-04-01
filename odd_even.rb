def odd_even(input)
  input.even? ? (p "The number you entered is even" ) : (p "The number you entered is odd" )
 end
 
 def yes
   p "Enter a number: "
   input = gets.chomp.to_i
   odd_even(input)
   p "Do you want to continue? y or n"
   response = gets.chomp.downcase
   if response == "n"
     exit_app()
   else
     yes()
   end
 end	
 
 def exit_app()
   p "*"*50	
   p "Thanks  for using Syeda's Banking app!"	
   p "*"*50
 end	  
 
 #welcome
 p "-"*50
 p "Welcome to Syeda's Number checker"
 p "*"*50
 #start
 p "To start type : y, to exit type: n"
 response = gets.chomp.downcase
 
 case response
 when "y"
   yes()
 else "n"
     exit_app()
 end		
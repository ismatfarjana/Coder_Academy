require 'faker'


def faker(response)
  if response== "y" 
      p Line
      p "you want more?"
      response = gets.chomp.to_s
      faker(response)
    else response== "n"
    p "thank you" 
    end
  end


p "Hi, Do you want to read a funfact? type y for yes, n for no"
response = gets.chomp.to_s
Line = Faker::String.random
faker(response)
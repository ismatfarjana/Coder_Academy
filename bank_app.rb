p "-"*50
p "SYEDA'S BANKING APP"
p "-"*50
  sleep 1

p"Hello there! "
sleep 1

print "What's your name? "
name= gets.chomp.split(" ").first.capitalize
p "#{name}, What a nice day to play with money!"

  sleep 1


def banking_app(name)
	initial_balance = 0
	password = "mickymouse"
	p "Welcome to SYEDA'S banking app"
	p "-"*50
	p "What would you like to do? (options: balance)"
	output = gets.chomp.downcase
	
	if output=="balance" 
		p "Enter password: (the password is: mickymouse)"
		user_entry = gets.chomp.downcase
	  if user_entry == password 
		p "Your balance is $#{initial_balance}."
		p "you want to add Deposite now? (option: type yes or type no)"
		deposite = gets.chomp.downcase
		 if deposite =="yes"
			p "how much would you like to deposit?"
			added_deposite = gets.chomp.to_i
			updated_balance = initial_balance + added_deposite
			p "#{name}, Your updated balance is #{updated_balance} !"
			 sleep 1
			 
		#withdraw	 
			 
			 	p "You want to withdraw money? (type yes or no)"
	   			withdraw = gets.chomp.downcase
	
				if withdraw == "yes"
					p "Your current balance is $#{updated_balance}. how much you want to withdraw: "
					amount = gets.chomp.to_i
					recent_balance = updated_balance - amount
					p "$#{amount} is been withdrawn. Recent balance is #{recent_balance} !"
				else withdraw == "no"
				p "Well done on not spending money! Have a nice day !"
		
				end	
			 
			 
			 
			 
		 else deposite =="no"	
			p "Its ok to change your mind!"
		 end
	  else user_entry != password 
		p "Wrong password ! Try again."
		  sleep 1
		banking_app(name)  
	  end
	else output != "balance"
		p "Invalid selection!"
		sleep 1
		banking_app(name)
	end
	
	sleep 1
	
p "-"*50	
p "Thanks  for using Syeda's Banking app!"	
p "-"*50	
		
end



banking_app(name)
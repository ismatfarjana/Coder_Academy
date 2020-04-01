school_fundraiser = {:cookies => { :chocolate => 4, :plain => 3, :ginger => 4},
                    :pot_plants => { :ficus => 10, :basil => 5, :money_tree => 13},
                    :donations => { :ten => 10, :twenty => 20, :fifty => 50}}

#adding my item
my_hash = Hash.new()
fruits = Hash.new()
fruits[:guava] = 2
my_hash[:fruits] = fruits

p my_hash
p school_fundraiser.merge!(my_hash)

#updating moneytree prize
p new_prize_for_moneytree = ((school_fundraiser.values[1].values[2])*75).to_f/100

#spending
p school_fundraiser.merge!(my_hash).values.map { |x| x.to_a}

purchased = ["ficus", "money_tree", "chocolate", "chocolate", "chocolate"]
# my spending

def spending(school_fundraiser,purchased )
     
     
end  



#def extra_cookies(purchased, school_fundraiser)
#end
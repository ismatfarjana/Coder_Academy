family = { aunts: ["Jane", "Jill" , "Beth"], 
sisters: ["Mary", "Sally", "Susan"], 
brothers: [ "Steve", "Bob", "Joe"], 
uncles: ["Frank", "Rob", "David"] }

 family[:immediate_member] = family[:sisters] + family[:brothers]
 family.delete(:sisters)
 family.delete(:brothers)
p family

 family[:uncles].unshift("Jacob")
p family

 family[:aunts].delete("Jill")
 family[:aunts]
p family
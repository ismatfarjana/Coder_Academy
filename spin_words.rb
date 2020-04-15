def spin_words (words)
  array = words.split(" ").map {|x| x.reverse if x.length >= 5}
  array.join(" ")
end
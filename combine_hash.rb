def combine_hashes(hash1, hash2)
  hash3 = hash1.merge!(hash2) { |k, o, n| o + n }

 return hash3
end
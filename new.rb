my_hash = {1=>'a', 2=>'b', 3=>'c', 4=>'d'}

puts my_hash[1]
puts nil unless my_hash[4] # doesn't work as expected
puts nil unless my_hash[5]
puts my_hash[2] = 'c'
puts my_hash
my_hash = {1=>'a', 2=>'b', 3=>'c', 4=>'d'}

p my_hash[1]
p nil unless my_hash[4] # doesn't work as expected
p nil unless my_hash[5]
p my_hash[2] = 'c'
p my_hash
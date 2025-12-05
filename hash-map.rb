class HashMap
	@load_factor = 0.75
	@capacity = 16
	
	def hash_key(key)
		hash_code = 0
		prime_number = 31
		
		key.each_char { |char| hash_code = prime_number * hash_code + char.ord }
		
		hash_code
	end
	
	def set(key, value)
		# key gets hashed,
		# to put in bucket, check if bucket contains value
		# if key == key in bucket, replace value,
		# else, store both key-value pairs in same bucket (by dealing with collision)
		
		# at some point, check for load_factor
	end
end
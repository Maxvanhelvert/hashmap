class HashMap

	def initialize
		@load_factor = 0.75
		@capacity = 16
		@hash_table = Array.new(@capacity)
	end
	
	def hash_key(key)
		hash_code = 0
		prime_number = 31
		
		key.each_char { |char| hash_code = prime_number * hash_code + char.ord }
		
		hash_code
	end
	
	def set(key, value)
		hased_key = hash_key(key) % @capacity
		bucket = @hash_table[hased_key]
		
		bucket = Hash.new if bucket.nil?
		
		bucket[key] = value
	end
end
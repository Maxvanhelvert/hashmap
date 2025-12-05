class HashMap
	# add capacity check + increase capacity
	def initialize
		@load_factor = 0.75
		@capacity = 16
		@hash_table = Array.new(@capacity) {Hash.new}
	end
	
	def hash_key(key)
		hash_code = 0
		prime_number = 31
		
		key.each_char { |char| hash_code = prime_number * hash_code + char.ord }
		
		hash_code
	end
	
	def set(key, value)
		hashed_key = hash_key(key) % @capacity
		bucket = @hash_table[hashed_key]
		
		bucket[key] = value
	end
	
	def get(key)
		hashed_key = hash_key(key) % @capacity
		bucket = @hash_table[hashed_key]
		
		return 'Not available' if bucket[key].nil?
		
		bucket[hashed_key]
	end
	
	def has?(key)
		hashed_key = hash_key(key) % @capacity
		bucket = @hash_table[hashed_key]
		
		bucket.include?(key)
	end

	def remove(key)
		hashed_key = hash_key(key) % @capacity
		bucket = @hash_table[hashed_key]
		
		bucket.delete(key)
	end

	def length
		total_length = 0
		@hash_table.each do |bucket|
			total_length += bucket.length unless bucket.nil?
		end

		total_length
	end

	def clear
		@capacity = 16
		@hash_table = Array.new(@capacity)
	end

	def keys
		all_keys = []
		@hash_table.each {|bucket| all_keys << bucket.keys}

		all_keys
	end

	def values
		all_values = []
		@hash_table.each {|bucket| all_values << bucket.values}

		all_values
	end

	def entries
		all_entries = []
		@hash_table.each do |bucket|
			bucket.each {|key, value| all_entries << [key, value]}
		end

		all_entries
	end

	def hash_table 
		@hash_table
	end
end
def substrings(string, substrings)

	## take first argument, strip out non alphanumerics (keep spaces)
	## split this string on spaces into array of words
	## iterate over dictionary
	## if match, push string to hash, increment key
	## return hash

	h = Hash.new
	clean_string = string.downcase.gsub(/[^\w\s]/, '')
	array = clean_string.split(' ')

	substrings.each do |substring|

		substring_matches = array.find_all { |word| word.include?(substring)}

		if (substring_matches.empty? == false)
			if (h.has_key?(substring))
				h[dict_word] += substring_matches.length
			else
				h.store(substring, substring_matches.length)
			end
		end

	end

	puts h

end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)
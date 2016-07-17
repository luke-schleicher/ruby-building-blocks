def caesars_cipher(string,shift)


	new_letter_array = []
	new_word_array = []

	word_array = string.split(' ')

	word_array.each do |word|

		letter_array = word.split('')

		letter_array.each do |letter|
			orig_letter = letter.ord
			letter = letter.ord
			letter = letter + shift

			if ((orig_letter > 90 && letter > 122) || (orig_letter <= 90 && letter > 90))
				letter -= 26
			end

			letter = letter.chr
			new_letter_array.push(letter)
		end

		new_word = new_letter_array.join

		new_word_array.push(new_word)

		new_letter_array = []

	end

	cipher = new_word_array.join(' ')

	puts cipher

end

caesars_cipher("my Name is luke",2)
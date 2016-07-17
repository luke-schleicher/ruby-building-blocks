def stock_picker(array)

	best_days = []
	biggest_gain = 0

	array[0..-2].each_with_index do |first_price, index|
		array[(index+1)..-1].each_with_index do |second_price, index|

			diff = first_price - second_price

			if (biggest_gain > diff)
				buy_day = array.index(first_price)
				sell_day = array.index(second_price)
				best_days = [buy_day,sell_day]
				biggest_gain = diff
			end
		end
	end

	puts best_days

end

prices = [100, 2, 45, 0, 8, 101, 4]

stock_picker(prices)
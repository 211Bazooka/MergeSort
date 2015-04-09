def merge(array, output = [])
	print "#{array}\n"

	return array if array.size <= 1

	if array.size % 2 == 0
		then mid = (array.size/2) - 1
		left = array[0..mid]
		right = array[(mid + 1)..-1]
		print "mid: #{mid} left: #{left} right: #{right}\n"
	else
		mid = (array.size/2)
		left = array[0..mid]
		right = array[(mid + 1)..-1]
		print "mid: #{mid} left: #{left} right: #{right}\n"
	end

	left[0] > right[0] ? (output << left[0]) : (output << right[0])
	merge(left[1..-1], output)
	merge(right[1..-1], output)
	return output
end

print merge([5, 2, 7, 3, 0, 1, 4, 9, 6, 8])
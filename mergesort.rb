def merge(array)
	output = []
	return array if array.size == 1
	mid = array.length/2

	right = array[0..(mid - 1)]
	left = array[(mid)..-1]

	r = merge(right)
	l = merge(left)
	
	stop = (l.size + r.size)

	until output.size == (stop) do

		if r == [] || l == []
			if r == []
				then output << l[0]
				l = l[1..-1]
			elsif l == []
				then output << r[0]
				r = r[1..-1]
			end

		elsif l[0] <= r[0] || r[0] <= l[0]
			if l[0] <= r[0]
				then output << l[0]
				l = l[1..-1]
			else 
				 output << r[0]
				r = r[1..-1]
			end
		end
	end
	output
end





=begin

		if r == [] || l == []
			if r == []
				then output << l[0]
				l = l[1..-1]
			elsif l == []
				then output << r[0]
				r = r[1..-1]
			end
		elsif l[0] < r[0] || r[0] < l[0]
			if l[0] < r[0]
				then output << l[0]
				l = l[1..-1]
			elsif r[0] < l[0]
				then output << r[0]
				r = r[1..-1]
			end
		end
	end
	output
end
=end

input = []
100.times {input << rand(100) + 1}

print input
puts "\nsorted: \n"

p merge(input)
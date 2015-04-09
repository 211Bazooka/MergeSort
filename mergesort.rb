def merge(array)
	puts "\n\nArray: #{array}"
	output = []
	return array if array.size <= 1

	if array.size % 2 == 0
		then mid = (array.size/2) - 1
		left = array[0..mid]
		right = array[(mid + 1)..-1]
		#print "mid: #{mid} left: #{left} right: #{right}\n"
	else
		mid = (array.size/2)
		left = array[0..mid]
		right = array[(mid + 1)..-1]
		#print "mid: #{mid} left: #{left} right: #{right}\n"
	end

	r = merge(right)
	l = merge(left)
	
	stop = (l.size + r.size)
	puts "l: #{l}\nr: #{r}"
	puts "stop: (#{l.size} + #{r.size}) = #{stop}"

	until output.size == (stop) do
		if r == []
			then output << l[0]
			l = l[1..-1]
		elsif l == []
			then output << r[0]
			r = r[1..-1]
		elsif l[0] < r[0]
			then output << l[0]
			l = l[1..-1]
		elsif r[0] < l[0]
			then output << r[0]
			r = r[1..-1]
		end
	end
	puts "output: #{output}\r\n\r\n"
	return output
end

merge([5, 2, 7, 3, 0, 1, 4, 9, 6, 8])
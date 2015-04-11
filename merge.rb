def merge_sort(arr)

	return arr if arr.length == 1

	mid = (arr.length/2)
	left = merge_sort(arr[0..mid-1])
	right = merge_sort(arr[mid..-1])

	merge(left, right)
end


def merge(arr1, arr2, output = [])
	lx = 0
	rx = 0
	until lx >= arr1.length && rx >= arr2.length
		if lx < arr1.length && rx < arr2.length
			if arr1[lx] <= arr2[rx]
				output << arr1[lx]
				lx += 1
			else
				output << arr2[rx]
				rx += 1
			end
		elsif lx < arr1.length
			output << arr1[lx]
			lx += 1
		elsif rx < arr2.length
			output << arr2[rx]
			rx += 1
		end
	end
	output
end

sample = []
100.times {sample << rand(100) + 1}

print sample
puts "\nsorted: "

print merge_sort(sample) # [0, 1, 9, 2, 8, 3, 7, 4, 6, 5]
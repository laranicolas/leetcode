# Given a fixed length array arr of integers, duplicate each occurrence of zero, shifting the remaining elements to the right.

# Note that elements beyond the length of the original array are not written.

# Do the above modifications to the input array in place, do not return anything from your function.

# Example 1:

# Input: [1,0,2,3,0,4,5,0]
# Output: null
# Explanation: After calling your function, the input array is modified to: [1,0,0,2,3,0,0,4]
# Example 2:

# Input: [1,2,3]
# Output: null
# Explanation: After calling your function, the input array is modified to: [1,2,3]

# Do not following the "use arr in-place" criteria.
# Time Complexity: O(n), Space Complexity: O(n)
def solution(arr)
	i = j = 0
	temp = []
	while (i <= arr.size-1)
		break if temp.size == arr.size
		if arr[i] == 0
			temp[j] = 0
			j+=1
			temp[j] = 0
		else
			temp[j] = arr[i]
		end
		i += 1
		j += 1
	end
	temp
end
# puts solution([1,0,2,3,0,4,5,0]) == [1,0,0,2,3,0,0,4]
# puts solution([1,2,3]) == [1,2,3]

# Time Complexity: O(n), Space Complexity: O(1)
def solution2(arr)
	return arr if arr.empty?

	n = arr.size - 1
	zero_dups = 0

	# Count zeros.
	i = 0
	while (i <= n)
		if arr[i] == 0
			if i == n
				arr[arr.size-1] = arr[i]
				n -= 1
				break
			end
			n -= 1
			zero_dups += 1
		end
		i += 1
	end

	# Loop array from left -> right
	(n).downto(0) do |left|
		if arr[left] == 0
			arr[left+zero_dups] = arr[left]
			zero_dups -= 1
			arr[left+zero_dups] = 0
		else
			arr[left+zero_dups] = arr[left]
		end
	end
	arr
end
puts solution2([1,0,2,3,0,4,5,0]) == [1,0,0,2,3,0,0,4]
puts solution2([8,4,5,0,0,0,0,7]) == [8,4,5,0,0,0,0,0]
puts solution2([1,0,2,3,0,0,5,0]) == [1,0,0,2,3,0,0,0]
puts solution2([1,5,2,0,6,8,0,6,0]) == [1,5,2,0,0,6,8,0,0]
puts solution2([0]) == [0]
puts solution2([0,0,0]) == [0,0,0]
puts solution2([]) == []
puts solution2([1,2,3]) == [1,2,3]
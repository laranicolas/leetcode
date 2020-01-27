# Given an array of integers, find if the array contains any duplicates.

# Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.

# Time complexity: O(n), Space Complexity: O(n)
def contains_duplicate(nums)
	return false if nums.empty? || nums.size == 1
	stack = {}
	nums.each do |n|
		return true if stack[n]
		stack[n] = true
	end
	false
end

# Time complexity: O(n log n), Space Complexity: O(1)
def contains_duplicate(nums)
	return false if nums.empty? || nums.size == 1
	nums.sort!
	nums.each.with_index do |n, i|
		return true if nums[i] == nums[i+1]
	end
	false
end

puts contains_duplicate([1]) == false
puts contains_duplicate([]) == false
puts contains_duplicate([1,1]) == true
puts contains_duplicate([1,2,3,1]) == true
puts contains_duplicate([1,2,3,4]) == false
puts contains_duplicate([1,1,1,3,3,4,3,2,4,2]) == true
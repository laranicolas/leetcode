# Given an array containing n distinct numbers taken from 0, 1, 2, ..., n, find the one that is missing from the array.

# Example 1:

# Input: [3,0,1]
# Output: 2
# Example 2:

# Input: [9,6,4,2,3,5,7,0,1]
# Output: 8
# Note:
# Your algorithm should run in linear runtime complexity. Could you implement it using only constant extra space complexity?

# Time Complexity: O(n), Space Complexity: O(1)
def missing_number(nums)
	return 0 if nums.empty?
	nums.sort!
	(0).upto(nums.size) do |i|
		return i unless nums[i]
		return i if nums[i] != i
	end
end
puts missing_number([]) == 0
puts missing_number([0]) == 1
puts missing_number([1]) == 0
puts missing_number([2]) == 0
puts missing_number([3,0,1]) == 2
puts missing_number([9,6,4,2,3,5,7,0,1]) == 8
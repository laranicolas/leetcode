# Given a non-empty array of integers, every element appears twice except for one. Find that single one.

# Note:

# Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?

# Example 1:

# Input: [2,2,1]
# Output: 1
# Example 2:

# Input: [4,1,2,1,2]
# Output: 4

# Time Complexity: O(n), Space Complexity: O(1)
def single_number(nums)
	a = 0
	nums.each do |n|
		a ^= n
	end
	a
end
puts single_number([2,2,1]) == 1
puts single_number([4,1,2,1,2]) == 4
puts single_number([1]) == 1
puts single_number([1,1]) == 0
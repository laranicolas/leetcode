# Given a non-empty array of integers, every element appears three times except for one, which appears exactly once. Find that single one.

# Note:

# Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?

# Example 1:

# Input: [2,2,3,2]
# Output: 3

# Example 2:

# Input: [0,1,0,1,0,1,99]
# Output: 99

# Time Complexity: O(n), Space Complexity: O(1)
def single_number(nums)
	nums.sort!
	n = nums.size - 1
	i = 0
	while (i <= n)
		if nums[i] == nums[i+1]
			i+= 3
		else
			return nums[i]
		end
	end
	return 0
end

puts single_number([2,2,2,3]) == 3
puts single_number([3,3,3,2]) == 2
puts single_number([0,1,0,1,0,1,99]) == 99
puts single_number([1]) == 1
puts single_number([1,1]) == 0
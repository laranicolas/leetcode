# Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.

# Example:

# Input: [0,1,0,3,12]
# Output: [1,3,12,0,0]
# Note:

# You must do this in-place without making a copy of the array.
# Minimize the total number of operations.
def move_zeros(nums)
	return nums if nums.size == 1 || nums.empty?
	length = nums.size - 1
	last_non_zero_index = 0
	0.upto(length) do |i|
		if nums[i] != 0
			nums[last_non_zero_index] = nums[i]
			last_non_zero_index += 1
		end
	end

	while (last_non_zero_index <= length)	
		nums[last_non_zero_index] = 0
		last_non_zero_index += 1
	end
	nums
end
puts move_zeros([]) == []
puts move_zeros([0]) == [0]
puts move_zeros([0,1,3]) == [1,3,0]
puts move_zeros([1,0,3]) == [1,3,0]
puts move_zeros([0,1,0,3,12]) == [1,3,12,0,0]
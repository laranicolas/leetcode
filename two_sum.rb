# Given an array of integers, return indices of the two numbers such that they add up to a specific target.

# You may assume that each input would have exactly one solution, and you may not use the same element twice.

# Example:

# Given nums = [2, 7, 11, 15], target = 9,

# Because nums[0] + nums[1] = 2 + 7 = 9,
# return [0, 1].

# Brute force solution: Time O(n2), Space O(1)
def solution(nums, target)
	nums.each.with_index do |n, i|
		j = i + 1
		while (j <= nums.size-1)
			return [i,j] if target == (n + nums[j])
			j += 1
		end
	end
	-1
end
# puts solution([2, 7, 11, 15], 9) == [0,1]
# puts solution([2, 7, 11, 15], 50) == -1

# Improve solution. Time O(n), Space O(n)
def solution2(nums, target)
	complements = {}
	nums.each.with_index do |n, i|
		complements[n] = i
	end
	nums.each_with_index do |n, i|
		diff = target - n
		return [i, complements[diff]] if complements.include?(diff)
	end
	-1
end
puts solution2([2, 7, 11, 15], 9) == [0,1]
puts solution2([2, 7, 11, 15], 50) == -1

# Improve solution. Time O(n), Space O(n)
def solution3(nums, target)
	complements = {}
	nums.each.with_index do |n, i|
		diff = target - n
		return [complements[diff], i] if complements.include?(diff)
		complements[n] = i
	end
	-1
end
puts solution3([2, 7, 11, 15], 9) == [0,1]
puts solution3([2, 7, 11, 15], 26) == [2,3]
puts solution3([2, 7, 11, 15, 20], 31) == [2,4]
puts solution3([2, 7, 11, 15], 50) == -1
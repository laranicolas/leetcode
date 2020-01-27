# Write an algorithm to determine if a number is "happy".

# A happy number is a number defined by the following process: Starting with any positive integer, replace the number by the sum of the squares of its digits, and repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1. Those numbers for which this process ends in 1 are happy numbers.

# Example: 

# Input: 19
# Output: true
# Explanation: 
# 1^2 + 9^2 = 82
# 8^2 + 2^2 = 68
# 6^2 + 8^2 = 100
# 1^2 + 0^2 + 0^2 = 1

# Time Complexity: O(n2), Space Complexity: O(n)
def is_happy(n)
	return false if n <= 0
	stack = {}
	while (true)
		happy_count = 0
		n.digits.each do |digit|
			happy_count += digit ** 2
		end
		return true if happy_count == 1
		return false if stack[happy_count]
		stack[happy_count] = true
		n = happy_count
	end
end
puts is_happy(-1) == false
puts is_happy(19) == true
puts is_happy(4) == false
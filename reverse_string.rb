# Write a function that reverses a string. The input string is given as an array of characters char[].

# Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.

# You may assume all the characters consist of printable ascii characters.

# Example 1:

# Input: ["h","e","l","l","o"]
# Output: ["o","l","l","e","h"]
# Example 2:

# Input: ["H","a","n","n","a","h"]
# Output: ["h","a","n","n","a","H"]
def reverse_string(s)
    s.reverse!
end
puts reverse_string(["h","e","l","l","o"]) == ["o","l","l","e","h"]
puts reverse_string(["H","a","n","n","a","h"]) == ["h","a","n","n","a","H"]

# Time Complexity: O(n), Space Complexity: O(1)
def reverse_string_2(s)
    swap(0,s.size-1, s)
end
def swap(left, right, s)
	if left < right
		s[left], s[right] = s[right], s[left]
		swap(left+1, right-1, s)
	end
	s
end
puts reverse_string_2(["h","e","l","l","o"]) == ["o","l","l","e","h"]
puts reverse_string_2(["H","a","n","n","a","h"]) == ["h","a","n","n","a","H"]
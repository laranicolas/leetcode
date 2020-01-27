# Given a string, find the first non-repeating character in it and return it's index. If it doesn't exist, return -1.

# Examples:

# s = "leetcode"
# return 0.

# s = "loveleetcode",
# return 2.
# Note: You may assume the string contain only lowercase letters.

# Time Complexity: O(n), Space Complexity: O(n)
def first_uniq_char(s)
	return -1 if s.empty?
	duplicates = {}
	s.each_char do |char|
		duplicates[char] ? duplicates[char] += 1 : duplicates[char] = 1
	end

	s.each_char.with_index do |char, i|
		return i if duplicates[char] == 1
	end
	-1
end
puts first_uniq_char('leetcode') == 0
puts first_uniq_char('loveleetcode') == 2
puts first_uniq_char('aaa') == -1
puts first_uniq_char('') == -1
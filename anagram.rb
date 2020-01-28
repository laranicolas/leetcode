# Given two strings s and t , write a function to determine if t is an anagram of s.

# Example 1:

# Input: s = "anagram", t = "nagaram"
# Output: true
# Example 2:

# Input: s = "rat", t = "car"
# Output: false
# Note:
# You may assume the string contains only lowercase alphabets.

# Follow up:
# What if the inputs contain unicode characters? How would you adapt your solution to such case?

# Time Complexity: O(n), Space Complexity: O(n)
def is_anagram?(s, t)
	return false if s.size != t.size
	length = s.size - 1
	letters = {}

	0.upto(length) do |i|
		letters[s[i]] ? letters[s[i]] += 1 : letters[s[i]] = 1
		letters[t[i]] ? letters[t[i]] -= 1 : letters[t[i]] = -1
	end

	letters.each do |i,v|
		return false if v != 0
	end
	true
end
puts is_anagram?('anagram', 'nagaram') == true
puts is_anagram?('anagram', 'nagarama') == false
puts is_anagram?('rat', 'car') == false
puts is_anagram?('pep', 'epp') == true
puts is_anagram?('aa', 'bb') == false

# Time Complexity: O(n log n), Space Complexity: O(1)
def is_anagram?(s, t)
	return false if s.size != t.size
	s.chars.sort.join == t.chars.sort.join
end
puts is_anagram?('anagram', 'nagaram') == true
puts is_anagram?('anagram', 'nagarama') == false
puts is_anagram?('rat', 'car') == false
puts is_anagram?('pep', 'epp') == true
puts is_anagram?('aa', 'bb') == false
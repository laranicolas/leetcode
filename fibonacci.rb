# The Fibonacci numbers, commonly denoted F(n) form a sequence, called the Fibonacci sequence, such that each number is the sum of the two preceding ones, starting from 0 and 1. That is,

# F(0) = 0,   F(1) = 1
# F(N) = F(N - 1) + F(N - 2), for N > 1.

# Time Complexity: O(n), Space Complexity: O(1)
def fibonacci(n)
	return 0 if n == 0
	return 1 if n == 1
	fibonacci(n-1) + fibonacci(n-2)
end
puts fibonacci(2) == 1
puts fibonacci(3) == 2
puts fibonacci(4) == 3
puts fibonacci(5) == 5

# Examples:
# #2 -> 2-1=1 + 0 == 1
# #3 -> 3-1=fib(2)=1 + 3-2=1 == 2
# #4 -> 4-1=fib(3)=2 + 4-2=fib(2)=1 == 3
# #5 -> 5-1=fib(4)=3 + 5-2=fib(3)=2 == 5
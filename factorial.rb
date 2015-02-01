# returns n! for n <= 0

def factorial(n)
	return 1 if n == 0
	n * factorial(n-1)
end

p factorial(0)
p factorial(1)
p factorial(2)
p factorial(9)
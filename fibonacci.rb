def fib(n)
	return 0 if n == 0
	return 1 if n == 1
	fib(n-1) + fib(n-2)
end

p fib(6)
p fib(2)
p fib(1)
p fib(5)
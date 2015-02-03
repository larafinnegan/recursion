def fib_iteration(n)
  array = [0, 1]
  return array[0] if n == 0
  return array if n == 1
  0.upto(n-2) { array << array[-1] + array[-2]}
  array
end


def fib_recursion(n, array = [0,1])
  return array[0] if n == 0
  return array if n == 1 || array.length > n
  fib_recursion(n, (array << (array[-1] + array[-2])))
end


p fib_iteration(10)
p fib_recursion(10)
p fib_iteration(0)
p fib_recursion(0)
p fib_iteration(1)
p fib_recursion(1)
p fib_iteration(2)
p fib_recursion(2)
p fib_iteration(3)
p fib_recursion(3)
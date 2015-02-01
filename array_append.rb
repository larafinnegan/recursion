# returns an array with all positive integers <= n.

def append(array, n)
	return array if n < 0
	array << n
	append(array, n-1)
end

def reverse_append(array, n)
	return array if n > 0
	array << n
	reverse_append(array, n+1)
end


p append([], 5)
p reverse_append([], -10)
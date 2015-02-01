# returns an array with all positive integers <= n.

def append(array, n)
	return array if n < 0
	array << n
	append(array, n-1)
end


p append([], 5)
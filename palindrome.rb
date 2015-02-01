def palindrome?(input)
	return true if input.length <= 1
	input[0] == input[-1] ? palindrome?(input[1..-2]) : false
end


p palindrome?("weexexw")
p palindrome?("")
p palindrome?("a")
p palindrome?("heh")
p palindrome?("heeh")
p palindrome?("abc")
p palindrome?("abcd")
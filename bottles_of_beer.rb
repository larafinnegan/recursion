def bottles_of_beer(n)
	if n == 0
		puts "No more bottles of beer on the wall."
	else
		puts "#{n} bottles of beer on the wall, #{n} bottles of beer."
		puts "Take one down, pass it around, #{n-1} bottles of beer on the wall."
		bottles_of_beer(n-1)
	end
end

bottles_of_beer(7)
roman_mapping = {
  "M" => 1000,
  "CM" => 900,
  "D" => 500,
  "CD" => 400,
  "C" => 100,
  "XC" => 90,
  "L" => 50,
  "XL" => 40,
  "X" => 10,
  "IX" => 9,
  "V" => 5,
  "IV" => 4,
  "I" => 1
}

def reverse_map(n, map, result = 0)
  if map.has_key?(n)
    result += map[n]
  elsif map.has_key?(n[0..1])
    result += map[n[0..1]]
    reverse_map(n[2..-1], map, result)
  else
    result += map[n[0]] 
    reverse_map(n[1..-1], map, result)
  end
end


p reverse_map("MMDCCCLXXV", roman_mapping)
p reverse_map("II", roman_mapping)
p reverse_map("IV", roman_mapping)
p reverse_map("VIII", roman_mapping)
roman_mapping = {
  1000 => "M",
  900 => "CM",
  500 => "D",
  400 => "CD",
  100 => "C",
  90 => "XC",
  50 => "L",
  40 => "XL",
  10 => "X",
  9 => "IX",
  5 => "V",
  4 => "IV",
  1 => "I"
}

def mapping(n, map, result = "")
  if map.has_key?(n)
    result += map[n] 
  else
    key = map.keys.find {|key| key < n}
    mapping((n -= key), map, (result += map[key]))
  end
end

p mapping(2875, roman_mapping)
def flatten(array, result=[])
  array.each do |elem|
    elem.kind_of?(Array) ? flatten(elem, result) : result << elem
  end
  result
end


p flatten([1,[1,2,3],[4,5,[10],6]])
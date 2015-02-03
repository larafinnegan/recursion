def flatten(array, result=[])
  until array.size == 0
    array[0].kind_of?(Array) ? flatten(array[0], result) : result << array[0]
    array.shift
  end
  result
end


p flatten([1,[1,2,3],[4,5,[10],6]])
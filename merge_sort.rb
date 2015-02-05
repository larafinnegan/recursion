def mergesort(array)
  return array if array.length <= 1
    array1 = array[0..((array.length/2)-1)]
    array2 = array[array1.length..-1]
    mini_array1 = mergesort(array1)
    mini_array2 = mergesort(array2)
    newarray = merge(mini_array1, mini_array2)
end

def merge(a, b)
  sorted = []
  while a.length > 0 && b.length > 0
    if a[0] <= b[0]
      sorted << a[0]
      a = a[1..-1]
    else
      sorted << b[0]
      b = b[1..-1]
    end
  end
    sorted += a += b
end


array = Array.new(500)
array.map! {|x| x = rand(300)}
p mergesort(array)


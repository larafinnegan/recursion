def mergesort(array)
  return array if array.length <= 1
    array1 = array[0..((array.length/2)-1)]
    array2 = array[array1.length..-1]
    a = mergesort(array1)
    b = mergesort(array2)
    newarray = merge(a, b)
end

def merge(a, b)
  sorted = []
  until a.empty? || b.empty?
    a[0] <= b[0] ? sorted << a.shift : sorted << b.shift
  end
    sorted += a += b
end


array = Array.new(500)
array.map! {|x| x = rand(300)}
p mergesort([1,5,2,3,2])


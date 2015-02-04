def merge_sort(array)
  return array if array.length <= 1

    array1 = []
    array2 = []
    
    array.each {|x| x < array[(array.length/2)] ? array1 << x : array2 << x}
   array
    array1
   array2

    while array1.length >= 1 || array2.length >= 1

      merge_sort(array1) 
      merge_sort(array2)
  end
#  return merge(array1, array2)
end

def merge(a, b)
  sorted = []
  until a.length == 1 || b.length == 1
    if a[0] <= b[0]
      sorted << a[0]
      a = a[1..-1]
    else
      sorted << b[0]
      b = b[1..-1]
    end
    sorted += a if b.empty?
    sorted += b if a.empty?
  end
  sorted
end


merge_sort([10,9,1,1,3,6,7,3,5])


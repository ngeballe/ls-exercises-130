def zip(array1, array2)
  array1.each_with_index.with_object([]) do |(item, index), result|
    result << [item, array2[index]]
  end
end

p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]

def each_with_index(array)
  (0..array.size - 1).each do |index|
    yield(array[index], index)
  end
  array
end


result = each_with_index([1, 3, 6]) do |value, index|
  puts "#{index} -> #{value**index}"
end

puts result == [1, 3, 6]

result = each_with_index([]) do |value, index|
  puts "#{value}"
end

puts result == []

result = each_with_index(%w(a b c)) do |value, index|
  puts "#{value.upcase}#{index + 1}"
end

puts result == %w(a b c)

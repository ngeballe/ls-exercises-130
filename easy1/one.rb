def one?(array)
  count = 0
  array.each do |item|
    count += 1 if yield(item)
    return false if count > 1
  end
  count == 1
end

# def one?(collection)
#   seen_one = false
#   collection.each do |element|
#     next unless yield(element)
#     return false if seen_one
#     seen_one = true
#   end
#   seen_one
# end

puts one?([1, 3, 5, 6]) { |value| value.even? } == true
puts one?([1, 3, 5, 7]) { |value| value.odd? } == false
puts one?([2, 4, 6, 8]) { |value| value.even? } == false
puts one?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
puts one?([1, 3, 5, 7]) { |value| true } == false
puts one?([1, 3, 5, 7]) { |value| false } == false
puts one?([]) { |value| true } == false

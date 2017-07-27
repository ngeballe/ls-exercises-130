def any?(array)
  array.each do |element|
    return true if yield(element)
  end
  false
end

def none?(array)
  array.each { |item| return false if yield(item) }
  true
end

def none2?(array, &block)
  !any?(array, &block)
end

puts none2?([1, 3, 5, 6]) { |value| value.even? } == false
puts none2?([1, 3, 5, 7]) { |value| value.even? } == true
puts none2?([2, 4, 6, 8]) { |value| value.odd? } == true
puts none2?([1, 3, 5, 7]) { |value| value % 5 == 0 } == false
puts none2?([1, 3, 5, 7]) { |value| true } == false
puts none2?([1, 3, 5, 7]) { |value| false } == true
puts none2?([]) { |value| true } == true

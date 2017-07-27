require 'set'

def map(array)
  array.each_with_object([]) { |item, result| result << yield(item) }
end

puts map([1, 3, 6]) { |value| value**2 } == [1, 9, 36]
puts map([]) { |value| true } == []
puts map(['a', 'b', 'c', 'd']) { |value| false } == [false, false, false, false]
puts map(['a', 'b', 'c', 'd']) { |value| value.upcase } == ['A', 'B', 'C', 'D']
puts map([1, 3, 4]) { |value| (1..value).to_a } == [[1], [1, 2, 3], [1, 2, 3, 4]]

puts map({a: 1, b: 2, c: 3}) { |k, v| "#{v}#{k}" } == %w(1a 2b 3c)

s = Set.new
s.add(3)
s.add(2)
s.add(7)
puts map(s) { |num| num % 5 } == [3, 2, 2]

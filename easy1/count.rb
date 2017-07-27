# def count(array)
#   result = 0
#   array.each { |item| result += 1 if yield(item) }
#   result
# end

# further exploration
def count(array)
  array.reduce(0) do |count, item|
    yield(item) ? count + 1 : count
  end
end

puts count([1,2,3,4,5]) { |value| value.odd? } == 3
puts count([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
puts count([1,2,3,4,5]) { |value| true } == 5
puts count([1,2,3,4,5]) { |value| false } == 0
puts count([]) { |value| value.even? } == 0
puts count(%w(Four score and seven)) { |value| value.size == 5 } == 2

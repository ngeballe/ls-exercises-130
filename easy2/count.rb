def count(*items)
  # count = 0
  # items.each do |item|
  #   count += 1 if yield(item)
  # end
  # count

  items.reduce(0) do |count, item|
    yield(item) ? count + 1 : count
  end
end

puts count(1, 3, 6) { |value| value.odd? } == 2
puts count(1, 3, 6) { |value| value.even? } == 1
puts count(1, 3, 6) { |value| value > 6 } == 0
puts count(1, 3, 6) { |value| true } == 3
puts count() { |value| true } == 0
puts count(1, 3, 6) { |value| value - 6 } == 3

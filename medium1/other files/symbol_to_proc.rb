def compare(item1, item2)
  p comparator.call(item1, item2)
end

comparator = proc { |a, b| b <=> a }

p [3, 4, 7, 1, 2].sort(&comparator)

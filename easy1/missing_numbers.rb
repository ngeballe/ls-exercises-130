# def missing(numbers)
#   results = []
#   numbers.each_cons(2) do |num, next_num|
#     results += ((num + 1)...(next_num)).to_a
#   end
#   results
# end

# def missing(numbers)
#   # min = numbers.min
#   # max = numbers.max
#   # min.upto(max).to_a - numbers

#   (numbers.min..numbers.max) - numbers
# end

def missing(ary)
  (ary.min..ary.max).to_a - ary
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []

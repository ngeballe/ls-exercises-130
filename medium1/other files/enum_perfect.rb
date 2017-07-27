require 'pry'

perfects = Enumerator.new do |y|
  a = 1
  loop do
    if perfect?(a)
      y << a
    end
    a += 1
  end
end

def perfect?(number)
  # factor sum not counting number = number
  factors = []
  (1..(number / 2)).each do |potential_factor|
    factors << potential_factor if number % potential_factor == 0
  end
  factors.reduce(:+) == number
end

p perfects.take(4)



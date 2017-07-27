factorials = Enumerator.new do |yielder|
  accumulator = 1
  number = 0
  loop do
    accumulator = number.zero? ? 1 : accumulator * number
    yielder << accumulator
    number += 1
  end
end

7.times { puts factorials.next }

factorials.rewind

factorials.each_with_index do |number, index|
  puts number
  break if index == 6
end

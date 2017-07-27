# def step(start_value, end_value, step_size)
#   value = start_value
#   while value <= end_value
#     yield(value)
#     value += step_size
#   end
#   # start_value..end_value
# end


def step(start_num, end_num, increment)
  until start_num == end_num + increment
    yield(start_num)
    start_num += increment
  end
end


x = step(1, 10, 3) { |value| puts "value = #{value}" }
puts x

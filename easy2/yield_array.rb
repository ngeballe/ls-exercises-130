def yield_array(array)
  yield(array)
end

p yield_array([2, 4, 7]) { |el| el.join } == "247"

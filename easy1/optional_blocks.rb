def compute
  # if block_given?
  #   yield
  # else
  #   "Does not compute"
  # end
  return "Does not compute" unless block_given?
  yield
end

p compute { 5 + 3 } # => 8
p compute { 'a' + 'b' } # => 'ab'
p compute # == 'Does not compute.'

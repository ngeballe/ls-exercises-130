def compute(variable)
  return "Does not compute" unless block_given?
  yield(variable)
end

p compute(2) { |n| puts n }
p compute(9) { |num| num**2 }
p compute(['alan', 'rosen']) { |names| names.map(&:capitalize).join(' ') }
p compute(47)


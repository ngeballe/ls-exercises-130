# Group 1
my_proc = proc { |thing| puts "This is a #{thing}." }
puts my_proc
puts my_proc.class
my_proc.call
my_proc.call "cat"

puts

# Group 2
my_lambda = lambda { |thing| puts "This is a #{thing}" }
my_second_lambda = -> (thing) { puts "This is a #{thing}" }
puts my_lambda
puts my_second_lambda
puts my_lambda.class
my_lambda.call('dog')

puts

def block_method_1(animal)
  yield
end

block_method_1('seal') { |seal| puts "This is a #{seal}." }
# block_method_1('seal') # => # error b/c no block given - LocalJumpError

puts

def block_method_2(animal)
  yield(animal)
end

block_method_2('turtle') { |turtle| puts "This is a #{turtle}." }
block_method_2('turtle') do |turtle, seal|
  puts "This is a #{turtle} and a #{seal}."
end
block_method_2('turtle') { puts "This is a #{animal}." }

# Observations
# putting a lambda looks like a proc but adds "(lambda)"
# Procs and lambdas both have the class Proc
# You can call a proc without its argument, but calling a lambda without its argument raises an Argument Error.

# you can't just say Lambda.new

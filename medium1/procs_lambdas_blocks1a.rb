# Group 1
my_proc = proc { |thing| puts "This is a #{thing}." }
puts my_proc # puts Proc object #<Proc ... ... filename.rb:line_number>
puts my_proc.class # Proc
my_proc.call # error b/c no argument--NO, it just puts "This is a ."
my_proc.call "cat" # puts "This is a cat."

# The proc, given an argument puts a string with the argument interpolated. Without an argument, it still runs, just putting nothing (nil) for the string

# Group 2
my_lambda = lambda { |thing| puts "This is a #{thing}" } # so far, looks like a proc except with word lambda instead of proc
my_second_lambda = -> (thing) { puts "This is a #{thing}" } # different look, but same concept
puts my_lambda # puts Proc object with line #
puts my_second_lambda # puts Proc object w/ line #
puts my_lambda.class # Proc
my_lambda.call('dog') # puts "This is a dog"
# my_lambda.call # error - ArgumentError
# my_third_lambda = Lambda.new { |thing| puts "This is a #{thing}" } # doesn't work; you can't create a lambda this way

# Group 3
def block_method_1(animal)
  yield
end

block_method_1('seal') { |seal| puts "This is a #{seal}." }
# block_method_1('seal') # Local Jump Error b/c no block given

# Group 4
def block_method_2(animal)
  yield(animal)
end

block_method_2('turtle') { |turtle| puts "This is a #{turtle}." } # => puts "This is a turtle."
block_method_2('turtle') do |turtle, seal|
  puts "This is a #{turtle} and a #{seal}."
end
# => "This is a turtle and a ."
# block_method_2('turtle') { puts "This is a #{animal}" } # => error - animal not defined for block

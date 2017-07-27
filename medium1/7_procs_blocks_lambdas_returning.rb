# Group 1
def check_return_with_proc
  my_proc = proc { return }
  my_proc.call
  puts "This will never output to screen."
end

check_return_with_proc

# If a proc has an explicit return, calling it within a method makes the method return right then.

# Group 2
# my_proc = proc { return }

# def check_return_with_proc_2(my_proc)
#   my_proc.call
# end

# check_return_with_proc_2(my_proc)

## A proc can't return if it's outside a method

# Group 3

def check_return_with_lambda
  my_lambda = lambda { return }
  my_lambda.call
  puts "This will be output to screen."
end

check_return_with_lambda

# Group 4
my_lambda = lambda { return }
def check_return_with_lambda(my_lambda)
  my_lambda.call
  puts "This will output to screen."
end

x = check_return_with_lambda(my_lambda)

## A lambda's return statement makes that lambda return something; it doesn't make the method calling the lambda return something.

# Group 5
def block_method3
  yield
end

block_method3 { return }

# passing a block with a return to a method creates a Local Jump Error.

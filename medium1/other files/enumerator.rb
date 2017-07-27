fib = Enumerator.new do |y|
  a = b = 1
  loop do
    y << a
    a, b = b, a + b
  end
end

p fib.next
p fib.next
p fib.take(10)

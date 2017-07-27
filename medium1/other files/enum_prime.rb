primes = Enumerator.new do |y|
  a = 2
  loop do
    y << a if prime?(a)
    a += 1
  end
end

def prime?(num)
  (2..Math.sqrt(num)).none? do |divisor|
    num % divisor == 0
  end
end

p primes.take(10)

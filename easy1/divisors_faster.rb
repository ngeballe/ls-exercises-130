# mine
def divisors(number)
  result = []
  (1..Math.sqrt(number)).each do |divisor|
    if number % divisor == 0
      complementary_divisor = number / divisor
      result << divisor 
      result << complementary_divisor unless complementary_divisor == divisor
    end
  end
  result.sort
end

# E-Lynn's
def divisors(num)
  divisors = []
  (1..Math.sqrt(num)).each do |factor|
    if num % factor == 0
      divisors << factor
      divisors << num / factor unless (num == factor**2)
    end
  end
  divisors.sort
end

p divisors(1) == [1]
p divisors(7) == [1, 7]
p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute
p divisors(999962000357) == [1, 999979, 999983, 999962000357]

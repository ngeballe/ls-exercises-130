def test
  yield(1)
end

test do |num1, num2|
  p "#{num1} #{num2}"
end

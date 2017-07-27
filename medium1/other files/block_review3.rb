def compare(str)
  after = yield(str)
  puts "Before: #{str}"
  puts "After: #{after}"
end

compare("jamie", :upcase)

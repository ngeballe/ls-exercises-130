require 'set'
require 'date'

class LittleArray < Array
end

class Text < String
end

class Sext < Text
end

def superclasses(_class)
  return nil unless _class.superclass
  result = [_class.superclass]
  while result.last.superclass
    result << result.last.superclass
  end
  result
end

[Fixnum, Bignum, String, Array, Hash, Set, Date, LittleArray, Text, Sext].each do |_class|
  puts "#{_class} -- #{superclasses(_class)}"
end

items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

gather(items) do | *items, last |
  puts items.join(', ')
  puts last
end

gather(items) do | first, *middle, last |
  puts first
  puts middle.join(', ')
  puts last
end

gather(items) do |first, *rest |
  puts first
  puts rest.join(', ')
end

gather(items) do |item1, item2, item3, item4|
  puts [item1, item2, item3].join(', ') + ', and wheat'
end

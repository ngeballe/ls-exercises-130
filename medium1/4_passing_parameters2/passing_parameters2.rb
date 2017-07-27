birds = ['crow', 'finch', 'hawk', 'eagle']

def types(birds)
  yield birds
end

types(birds) do |_, _, *birds_of_prey|
  puts "Two birds of prey are the #{birds_of_prey.join(' and ')}"
end

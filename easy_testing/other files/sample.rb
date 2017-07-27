class NoExperienceError < StandardError; end

class Employee
  def initialize(years_of_experience)
    @years_of_experience = years_of_experience
  end

  def hire
    raise NoExperienceError, "No experience!" unless @years_of_experience >= 2
    true
  end
end

class List
  def process
    self
  end
end

l = List.new

p l.object_id == l.process.object_id

require 'minitest/autorun'

class NoExperienceError < StandardError; end

class Employee
  def initialize(years_of_experience)
    @experience = years_of_experience
  end

  def hire
    raise NoExperienceError if @experience.zero?
  end
end

class ExceptionTest < Minitest::Test
  def test_assert_exception
    employee = Employee.new(0)
    assert_raises(NoExperienceError) { employee.hire }
  end
end

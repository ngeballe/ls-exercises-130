require 'minitest/autorun'
require_relative 'sample'

class SampleTest < Minitest::Test
  def test_nil
    value = nil
    # value = "Nils"
    # assert_equal nil, value
    assert_nil value
  end

  def test_not_empty
    list = []
    # list = 'your head'
    assert_empty list
  end

  def test_includes
    list = %w(abc xyz)
    assert_includes list, "xyz"
    # assert_equal true, list.include?("zyx")
  end

  def test_raise_no_experience_error
    employee = Employee.new(years_of_experience = 0)
    assert_raises NoExperienceError do
      employee.hire
    end

    # assert_raises NoExperienceError do
    #   employee.hire
    # end
  end

  def test_type
    float = 99.0
    int = 99
    value = Numeric.new
    assert_instance_of Numeric, value

    refute_instance_of Numeric, float
    refute_instance_of Numeric, int
  end

  def test_kind
    float = 99.0
    int = 99
    value = Numeric.new
    obj = Object.new

    assert_kind_of Numeric, int
    # refute_instance_of Numeric, int

    assert_kind_of Numeric, float
    # refute_instance_of Numeric, float

    assert_kind_of Numeric, value
    # assert_instance_of Numeric, value

    refute_kind_of Numeric, obj
    # refute_instance_of Numeric, obj
  end

  def test_same_object
    list = List.new
    assert_same list, list.process
  end

  def test_not_include
    list = %w(abc pqr xyz)
    item = 'xyz'
    refute_includes list, item
  end
end

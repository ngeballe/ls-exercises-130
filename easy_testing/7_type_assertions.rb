require 'minitest/autorun'

class TypeTest < Minitest::Test
  def test_type
    value = Numeric.new
    assert_instance_of(Numeric, value)
  end
end

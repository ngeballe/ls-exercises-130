require 'minitest/autorun'

class EqualityTest < Minitest::Test
  def test_equality
    value = 'XYZ'
    assert_equal 'xyz', value.downcase
  end
end

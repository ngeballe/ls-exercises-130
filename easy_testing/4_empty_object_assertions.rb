require 'minitest/autorun'

class EmptyTest < Minitest::Test
  def test_assert_empty
    list = []
    assert_empty list
  end
end

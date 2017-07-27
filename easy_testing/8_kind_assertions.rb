require 'minitest/autorun'

class KindTest < Minitest::Test
  def test_kind
    value = 8.2
    assert_kind_of Numeric, value
  end
end

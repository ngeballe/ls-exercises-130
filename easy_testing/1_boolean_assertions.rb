require 'minitest/autorun'

class OddTest < Minitest::Test
  def test_odd
    # assert_equal true, 7.odd?
    value = 8
    assert value.odd?, 'value is not odd'
  end
end

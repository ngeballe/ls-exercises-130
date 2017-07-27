require 'minitest/autorun'

class InclusionTest < Minitest::Test
  def test_assert_includes
    list = %w[abc pqr xyz]
    assert_includes list, 'xyz'
  end
end

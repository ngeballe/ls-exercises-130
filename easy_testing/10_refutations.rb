require 'minitest/autorun'

class RefutationTest < Minitest::Test
  def test_refutation
    list = %w[a b]
    refute_includes list, 'xyz'
  end
end

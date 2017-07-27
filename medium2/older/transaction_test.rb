require 'minitest/autorun'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  def test_prompt_for_payment
    transaction = Transaction.new(18.99)
    input = StringIO.new('18.99\n')
    output = StringIO.new

    transaction.prompt_for_payment(input: input, output: output)
    assert_equal 18.99, transaction.amount_paid
  end
end

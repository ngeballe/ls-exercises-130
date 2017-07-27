require 'minitest/autorun'
require_relative 'cash_register'
require_relative 'transaction'

class TransactionTest < Minitest::Test
  def test_prompt_for_payment
    transaction = Transaction.new(45)

    correct_amount_input = StringIO.new('45\n')
    transaction.prompt_for_payment(input: correct_amount_input)
    assert_equal 45, transaction.amount_paid
  end
end



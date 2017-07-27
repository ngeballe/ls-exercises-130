require 'minitest/autorun'
require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  def test_accept_money
    cash_register = CashRegister.new(100)
    transaction = Transaction.new(50)
    transaction.amount_paid = 50

    previous_amount = cash_register.total_money
    cash_register.accept_money(transaction)
    current_amount = cash_register.total_money

    assert_equal previous_amount + 50, cash_register.total_money
  end

  def test_change
    cash_register = CashRegister.new(100)
    transaction = Transaction.new(15.99)
    transaction.amount_paid = 20

    assert_equal 4.01, cash_register.change(transaction)
  end

  def test_give_receipt
    cash_register = CashRegister.new(100)
    transaction = Transaction.new(25)

    assert_output("You've paid $25.\n") do
      cash_register.give_receipt(transaction)
    end
  end
end

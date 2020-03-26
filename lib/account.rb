class Account

  attr_reader :all_transactions

  def initialize
    @all_transactions = 0
  end

  def make_deposit(input_amount, date)
    two_dp_amount = '%.2f' % input_amount

    @all_transactions = "#{date} || #{two_dp_amount} || || #{two_dp_amount}"

  end

  # def save_transaction
  # end

end
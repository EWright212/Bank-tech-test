class Account

  attr_reader :all_transactions, :balance

  def initialize
    @all_transactions = []
    @balance = 0
  end

  def make_deposit(input_amount, date)
    @balance += input_amount

    two_dp_amount = '%.2f' % input_amount
    two_dp_balance = '%.2f' % @balance

    @all_transactions << "#{date} || #{two_dp_amount} || || #{two_dp_balance}"

  end

  def make_withdrawal(input_amount, date)
    @balance -= input_amount

    two_dp_amount = ('%.2f' % input_amount)
    two_dp_balance = '%.2f' % @balance

    @all_transactions << "#{date} || || #{two_dp_amount} || #{two_dp_balance}"

  end
  # TODO - rename input amounts, split this 2dp thing, 
  # split save formatting, then write unit tests for these
end

class Account

  attr_reader :all_transactions, :balance

  def initialize
    @all_transactions = []
    @balance = 0
  end

  def make_deposit(input_amount, date)
    @balance += input_amount

    two_dp_amount = convert_two_dp(input_amount)
    two_dp_balance = convert_two_dp(@balance)

    save_deposit(two_dp_amount, date, two_dp_balance)

  end

  def make_withdrawal(input_amount, date)
    @balance -= input_amount

    two_dp_amount = convert_two_dp(input_amount)
    two_dp_balance = convert_two_dp(@balance)

    save_withdrawal(two_dp_amount, date, two_dp_balance)

  end

  private

  def save_deposit(two_dp_amount, date, two_dp_balance)
    @all_transactions << "#{date} || #{two_dp_amount} || || #{two_dp_balance}"
  end

  def save_withdrawal(two_dp_amount, date, two_dp_balance)
    @all_transactions << "#{date} || || #{two_dp_amount} || #{two_dp_balance}"
  end

  def convert_two_dp(float)
    two_dp_string = '%.2f' % float
  end
  # TODO - rename input amounts, split this 2dp thing, 
  # split save formatting, then write unit tests for these
end

class Account

  attr_reader :all_transactions, :balance

  def initialize
    @all_transactions = []
    @balance = 0
  end

  def make_deposit(deposit_amount, date)
    @balance += deposit_amount

    two_dp_deposit = convert_two_dp(deposit_amount)
    two_dp_balance = convert_two_dp(@balance)

    save_deposit(two_dp_deposit, date, two_dp_balance)

  end

  def make_withdrawal(withdrawal_amount, date)
    @balance -= withdrawal_amount

    two_dp_withdrawal = convert_two_dp(withdrawal_amount)
    two_dp_balance = convert_two_dp(@balance)

    save_withdrawal(two_dp_withdrawal, date, two_dp_balance)

  end

  private

  def save_deposit(two_dp_deposit, date, two_dp_balance)
    @all_transactions << "#{date} || #{two_dp_deposit} || || #{two_dp_balance}"
  end

  def save_withdrawal(two_dp_withdrawal, date, two_dp_balance)
    @all_transactions << "#{date} || || #{two_dp_withdrawal} || #{two_dp_balance}"
  end

  def convert_two_dp(float)
    two_dp_string = '%.2f' % float
  end

end

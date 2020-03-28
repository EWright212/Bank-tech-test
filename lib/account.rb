class Account

  attr_reader :all_transactions, :balance

  def initialize
    @all_transactions = []
    @balance = 0
  end

  def make_deposit(deposit_amount, date)
    # TODO: make these if "guard clauses" one-liners: raise xxx if yyy
    if deposit_amount.negative?
      raise RuntimeError, "Cannot input a negative amount"
    end

    @balance += deposit_amount

    two_dp_deposit = convert_two_dp(deposit_amount)
    two_dp_balance = convert_two_dp(@balance)

    save_deposit(two_dp_deposit, date, two_dp_balance)
  end

  def make_withdrawal(withdrawal_amount, date)
    # TODO: make these if "guard clauses" one-liners: raise xxx if yyy
    if withdrawal_amount.negative? 
      raise "Cannot input a negative amount"
    end

    @balance -= withdrawal_amount

    two_dp_withdrawal = convert_two_dp(withdrawal_amount)
    two_dp_balance = convert_two_dp(@balance)

    save_withdrawal(two_dp_withdrawal, date, two_dp_balance)

    # TODO: option1 (instead of 3 lines above)
    # formatted_withdrawal = @withdrawal_formatter.format(withdrawal_amount, @balance, date)
    # @all_transactions << formatted_withdrawal

    # TODO: option2 (instead of 3 lines above)
    # @all_transactions << Withdrawal.new(withdrawal_amount, @balance, date)
  end

  private

  def save_deposit(two_dp_deposit, date, two_dp_balance)
    @all_transactions << "#{date} || #{two_dp_deposit} || || #{two_dp_balance}"
  end

  def save_withdrawal(two_dp_withdrawal, date, two_dp_balance)
    @all_transactions << "#{date} || || #{two_dp_withdrawal} || #{two_dp_balance}"
  end

  # TODO: extract into another class/module just for Decimal Point Formatting (Money Formatter)
  def convert_two_dp(float)
    '%.2f' % float
  end

end

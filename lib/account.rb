class Account

  def make_deposit(input_amount, date)
    two_dp_amount = '%.2f' % input_amount
    "#{date} || #{two_dp_amount} || || #{two_dp_amount}"
    
  end

end
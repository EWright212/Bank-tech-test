require 'bank_statement'
require 'account'

describe 'user can make a deposit' do
  it 'user makes one deposit and one withdrawal in chronological order then prints statment' do
    account = Account.new
    account.make_deposit(300.00, "01/01/2020")
    account.make_withdrawal(200.00, "02/01/2020")
    bankstatement = BankStatement.new(account.all_transactions)
    expect do
      bankstatement.print_statement
    end.to output("date || credit || debit || balance\n02/01/2020 || || 200.00 || 100.00\n01/01/2020 || 300.00 || || 300.00\n").to_stdout
  end
  it 'acceptance criteria' do
    account = Account.new
    account.make_deposit(1000.00, "10/01/2012")
    account.make_deposit(2000.00, "13/01/2012")
    account.make_withdrawal(500.00, "14/01/2012")
    bankstatement = BankStatement.new(account.all_transactions)
    expect do
      bankstatement.print_statement
    end.to output("date || credit || debit || balance\n14/01/2012 || || 500.00 || 2500.00\n13/01/2012 || 2000.00 || || 3000.00\n10/01/2012 || 1000.00 || || 1000.00\n").to_stdout
  end
end
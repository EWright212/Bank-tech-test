require 'bank_statement'
require 'account'

describe 'edge cases' do
  it 'deposit of 0.00 made' do
    account = Account.new
    account.make_deposit(0.00, "01/01/2020")
    bankstatement = BankStatement.new(account.all_transactions)
    expect do
      bankstatement.print_statement
    end.to output("date || credit || debit || balance\n01/01/2020 || 0.00 || || 0.00\n").to_stdout
  end
end
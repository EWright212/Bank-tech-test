require 'bank_statement'
require 'account'

describe 'deposit edge cases' do
  it 'deposit of 0.00 made' do
    account = Account.new
    account.make_deposit(0.00, "01/01/2020")
    bankstatement = BankStatement.new(account.all_transactions)
    expect do
      bankstatement.print_statement
    end.to output("date || credit || debit || balance\n01/01/2020 || 0.00 || || 0.00\n").to_stdout
  end
  it 'deposit of negative amount made throws error' do
    account = Account.new
    expect { account.make_deposit(-100.00, "01/01/2020") } .to raise_error(RuntimeError, "Cannot input a negative amount")
  end
  it 'deposit of integer amount' do
    account = Account.new
    account.make_deposit(10, "01/01/2020")
    bankstatement = BankStatement.new(account.all_transactions)
    expect do
      bankstatement.print_statement
    end.to output("date || credit || debit || balance\n01/01/2020 || 10.00 || || 10.00\n").to_stdout
  end
  it 'deposit of one dp float amount' do
    account = Account.new
    account.make_deposit(10.5, "01/01/2020")
    bankstatement = BankStatement.new(account.all_transactions)
    expect do
      bankstatement.print_statement
    end.to output("date || credit || debit || balance\n01/01/2020 || 10.50 || || 10.50\n").to_stdout
  end
end

describe 'withdrawal edge cases' do
  it 'withdrawal of 0.00 made' do
    account = Account.new
    account.make_withdrawal(0.00, "01/01/2020")
    bankstatement = BankStatement.new(account.all_transactions)
    expect do
      bankstatement.print_statement
    end.to output("date || credit || debit || balance\n01/01/2020 || || 0.00 || 0.00\n").to_stdout
  end
  it 'negative withdrawal made throws error' do
    account = Account.new
    expect { account.make_withdrawal(-100.00, "01/01/2020") } .to raise_error(RuntimeError, "Cannot input a negative amount")
  end
  it 'withdrawal of integer amount' do
    account = Account.new
    account.make_withdrawal(10, "01/01/2020")
    bankstatement = BankStatement.new(account.all_transactions)
    expect do
      bankstatement.print_statement
    end.to output("date || credit || debit || balance\n01/01/2020 || || 10.00 || -10.00\n").to_stdout
  end
  it 'withdrawal of one dp float amount' do
    account = Account.new
    account.make_withdrawal(10.5, "01/01/2020")
    bankstatement = BankStatement.new(account.all_transactions)
    expect do
      bankstatement.print_statement
    end.to output("date || credit || debit || balance\n01/01/2020 || || 10.50 || -10.50\n").to_stdout
  end
end

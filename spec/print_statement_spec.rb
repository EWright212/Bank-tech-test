require 'bank_statement'

describe 'user can print a statement' do
  let(:account) { double :account }
  it 'no transactions have been made' do
    allow(account).to receive(:all_transactions).and_return([])
    bankstatement = BankStatement.new(account.all_transactions)
    expect do
      bankstatement.print_statement
    end.to output("date || credit || debit || balance\n").to_stdout
  end
end

describe 'user can print a statement' do
  let(:account) { double :account }
  it 'no transactions have been made' do
    allow(account).to receive(:all_transactions).and_return(
      ["10/01/2012 || 1000.00 || || 1000.00", "13/01/2012 || 2000.00 || || 3000.00", "14/01/2012 || || 500.00 || 2500.00"])
    bankstatement = BankStatement.new(account.all_transactions)
    expect do
      bankstatement.print_statement
    end.to output("date || credit || debit || balance\n14/01/2012 || || 500.00 || 2500.00\n13/01/2012 || 2000.00 || || 3000.00\n10/01/2012 || 1000.00 || || 1000.00\n").to_stdout
  end
end

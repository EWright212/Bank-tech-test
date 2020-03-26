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
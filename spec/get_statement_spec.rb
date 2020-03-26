require 'bank_statement'

describe 'gets output for bank statement' do
  it 'print one line bank statment, no transactions' do
    #TODO - doubles here as not feature test
    account = Account.new
    bank_statement = BankStatement.new(account.all_transactions)
    expect(bank_statement.get_statement).to eq("date || credit || debit || balance")
  end
end

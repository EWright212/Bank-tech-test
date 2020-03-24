require 'bank_statement'

describe 'gets output for bank statement' do
  it 'print one line bank statment, no transactions' do
    bank_statement = BankStatement.new
    expect(bank_statement.get_statement).to eq("date || credit || debit || balance\n")
  end
end

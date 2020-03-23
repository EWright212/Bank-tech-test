require 'bank_statement'

describe 'print a bank statment' do
  it 'print one line bank statment' do
    bank_statement = BankStatement.new
    expect(bank_statement.print_statement).to eq("date || credit || debit || balance\n")
  end
end
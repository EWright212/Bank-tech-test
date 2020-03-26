require 'bank_statement'
describe 'gets output for bank statement' do
  it 'print one line bank statment, no transactions' do
    #TODO - doubles here as not feature test
    account = Account.new
    bank_statement = BankStatement.new(account.all_transactions)
    expect do
      bank_statement.print_statement
    end.to output("date || credit || debit || balance\n").to_stdout
  end
end

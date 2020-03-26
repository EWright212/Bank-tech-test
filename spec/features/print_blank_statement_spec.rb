require 'bank_statement'

describe 'print bank statement' do
  it 'print one line bank statment, no transactions' do
    expect do
      account = Account.new
      bankstatement = BankStatement.new(account.all_transactions)
      bankstatement.print_statement
    end.to output("date || credit || debit || balance\n").to_stdout
  end
end


require 'bank_statement'

feature 'print a bank statment' do
  scenario 'print one line bank statment' do
    bank_statement = BankStatement.new
    # expect bank_statement.print_statement to eq
    # ("date || credit || debit || balance\n01/01/2020 || || || 0.00")
  end
end
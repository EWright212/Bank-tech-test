require 'bank_statement'
require 'account'

# describe 'user can make a deposit' do
#   it 'user makes one deposit then prints statment' do
#     account = Account.new
#     account.make_deposit(100.00,01/01/2020)
#     expect do
#       BankStatement.new.print_statement
#     end.to output("date || credit || debit || balance\n01/01/2020 || 100.00 || || 100.00").to_stdout
#   end
# end
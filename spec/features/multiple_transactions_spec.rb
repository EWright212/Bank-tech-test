# require 'bank_statement'
# require 'account'

# describe 'user can make a deposit' do
#   it 'user makes one deposit and one withdrawal in chronological order then prints statment' do
#     account = Account.new
#     account.make_deposit(300.00, "01/01/2020")
#     account.make_withdrawal(200.00, "02/01/2020")
#     bankstatement = BankStatement.new(account.all_transactions)
#     expect do
#       bankstatement.print_statement
#     end.to output("date || credit || debit || balance\n01/01/2020 || 300.00 || || 300.00\n02/01/2020 || || 100.00 || 200.00\n").to_stdout
#   end
# end
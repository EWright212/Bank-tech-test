class BankStatement

  def initialize(all_transactions)
    @array_of_transactions = all_transactions
  end

  def print_statement
    puts "date || credit || debit || balance"
    # TODO: use 'map' instead of 'each' to create an array of statement lines
    @array_of_transactions.reverse.each do |transaction|
      puts transaction.inspect.gsub!(/\A"|"\Z/, '')
      # convert_to_bank_Statement_line would return BankStatementLine.new...
      # transaction.convert_to_bank_statement_line.format_nicely
    end
  end

end

# class Deposit

#   def initialize(date, credit, debit, balance)
#     save them....

#   def convert_to_bank_statement_line
#     BankStatementLine.new(@date, @credit, @debit, @balance)
#   end

# end
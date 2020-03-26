class BankStatement

  def initialize(all_transactions)
    @array_of_transactions = all_transactions
  end

  def print_statement
    puts "date || credit || debit || balance"
    @array_of_transactions.reverse.each do |transaction|
      puts transaction.inspect.gsub!(/\A"|"\Z/, '')
    end
  end

end

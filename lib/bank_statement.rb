class BankStatement

  def initialize(all_transactions)
    @list_of_transactions = all_transactions
  end

  def print_statement
    puts "date || credit || debit || balance"
    if @list_of_transactions == []
    else
      @list_of_transactions.reverse.each do |transaction|
        puts transaction.inspect.gsub!(/\A"|"\Z/, '')
      end
    end
  end

  # def get_statement
    
  #   if @list_of_transactions == []
  #     output = ""
  #   else
  #     @list_of_transactions.each do |transaction|
  #       output = transaction.inspect
  #     end
  #     output = "\n" + output.gsub!(/\A"|"\Z/, '')
  #   end

  #   "date || credit || debit || balance#{output}"
  # end
end

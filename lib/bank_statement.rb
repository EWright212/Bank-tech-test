class BankStatement

  def initialize(all_transactions)
    @list_of_transactions = all_transactions
  end

  def print_statement
    puts get_statement
  end

  def get_statement
    
    if @list_of_transactions == []
      output = ""
    else
      @list_of_transactions.each do |transaction|
        output = transaction.inspect
      end
      output = "\n" + output.gsub!(/\A"|"\Z/, '')
    end

    "date || credit || debit || balance#{output}"
  end
end

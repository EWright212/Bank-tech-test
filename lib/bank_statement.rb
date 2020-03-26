class BankStatement

  def initialize(all_transactions)
    @list_of_transactions = all_transactions
  end

  def print_statement
    puts get_statement
  end

  def get_statement
    
   
    output = @list_of_transactions[0].inspect
    
    if @list_of_transactions == []
      output = ""
    else
      output = "\n" + output.gsub!(/\A"|"\Z/, '')
    end

    "date || credit || debit || balance#{output}"
  end
end

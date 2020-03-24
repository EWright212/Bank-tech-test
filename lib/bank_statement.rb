class BankStatement
  def print_statement
    print BankStatement.new.get_statement
  end

  def get_statement
    "date || credit || debit || balance\n"
  end
end

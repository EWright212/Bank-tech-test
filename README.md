# Bank Tech Test

Practice tech test from week 10 of Makers. This is a practice test to see the best code that I can produce when there is a minimal time pressure.

In this example I showcase my OO design and TDD skills.

This was a solo project.

Tech stack:
- Ruby
- Rspec

## Specification

Requirements and acceptance criteria were given to us, as below.

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```
## Getting Started

Please fork then clone this repo onto your local machine.

### Prerequisites

This code utlizes ruby 2.6.3. To install necessary gems please type

```
bundle install
```
into the terminal from the folder's location.

### How to run the tests

Please type

```
rspec
```
into the terminal from the folder's location. The output should look similar to the below

```
$ rspec
.....................

Finished in 0.01907 seconds (files took 0.13176 seconds to load)
21 examples, 0 failures

Coverage report generated for RSpec to /Users/student/Documents/Projects/Makers/Week-10/Bank-Tech-Test/coverage. 165 / 165 LOC (100.0%) covered.
```


### How to use the programme

Load irb and require the main files

```
$ irb
2.6.3 :001 > require './lib/account.rb'
 => true 
2.6.3 :002 > require './lib/bank_statement.rb'
 => true 

```
Create a new instance of the account class

```
2.6.3 :003 > account = Account.new
```
Make and withdrawals and deposits that you wish in the form of

```
account.make_deposit(amount, "date")
account.make_withdrawal(amount, "date")
```

Deposit or withdrawal amount may be an integer, one or two decimal place float. Dates must be input in the form of a string, here they are seen in UK format but you may use any format you like"

Please note if you wish the bank statement to print in reverse chronological order, you must input your requests in chronological order.

For example:

```
2.6.3 :004 > account.make_deposit(20, "04/08/2017")

 => ["04/08/2017 || 20.00 || || 20.00"] 

2.6.3 :005 > account.make_withdrawal(100, "06/09/2017")

=> ["04/08/2017 || 20.00 || || 20.00", "06/09/2017 || || 100.00 || -80.00"]
```

When you have input all the transactions you desire, you may print the bank statement. 

First, make a new instance of the bank class, passing in as an argument the transactions from the account class. Then you may print the bank statement.
```
2.6.3 :006 > bankstatement = BankStatement.new(account.all_transactions)

 => #<BankStatement:0x00007ff4802001f8 @array_of_transactions=["04/08/2017 || 20.00 || || 20.00", "06/09/2017 || || 100.00 || -80.00"]> 

2.6.3 :007 > bankstatement.print_statement
date || credit || debit || balance
06/09/2017 || || 100.00 || -80.00
04/08/2017 || 20.00 || || 20.00

 => ["06/09/2017 || || 100.00 || -80.00", "04/08/2017 || 20.00 || || 20.00"] 
```

When you are finished, quit out of irb. The programme is only stored in memory and no transactions will be saved.
```
2.6.3 :08 > quit
```

Thank you for trying my programme!

### Assumptions made

Before getting started I listed as many assumptions as I could think of based on my interpretation of the acceptance criteria and added to this list as I went along. I focussed on producing the MVP as opposed to guessing additional requests that the user may like to ensure I followed agile guidance.

1. Opening balance is zero
2. On a blank stament where no transactions have been made, no transactions/balance is shown 
    - I did consider consitently showing a balance which is more in line with a real world bank statement, however I will focus on the MVP.
 3. Dates are input into the system by the user instead of reading the current date from user's machine. 
 4. Balance has no credit/debit limit
 5. Debit balance shown as a negative number instead of Cr/Dr
 6. Assume a printed statement wishes to show all input transactions and is not for transactions up to any given day
 7. Each transaction or equest for printed statement is made in a separate command line instruction
 8. Assume no need for multiple users, just one person interacting with the system at once
 9. Assume no limit on amounts in balance/transactions as long as not interfering with computer memory
 10. Assume unlimited requests/transactions in a day (again as long as they are not running into memory issues)
 11. Assume statement just outputs all transactions made, in reverse order of input to system, not in chronological order. 
     - The acceptance criteria are not clear on this point as all examples are in chronological order. In true TDD/BDD work I would be able to query this with the client.
 12. Withdrawals and deposits happen separately
 13. Withdrawals and deposits are made in amounts rounded to nearest pence.
 14. Withdrawals/deposits are not given in negative form.
 15. Transactions are given valid dates as user self inputs dates. 
 16. Data does not need to be validated, as this is not part of MVP.

 Notes to self from acceptance criteria:

 - Dates in UK format
 - No commas or number separators for cr/dr/balance
 - No mention of currency


 ### Edge cases:
These have all been included in the tests.

 - Bank statement can print when no transactions have been made.
 - Transactions of zeros (Deposit of 0.00) -- Expect to be possible and appear as a real transaction. Would like to query deisred output with client as per TDD/BDD.
 - Balance can be negative/overdrawn  -- Expect to be permissible with no limit
 - Negative amount given in transaction throws error
 - Transactions given as integers or floats to one decimal place still output as if two decimal places.


 ### Ideas to do in future/if I had more time

- If I had more time I would split my code to an additional class that dealt with the formatting for the bank statement.
 - User doesn't specify withdrawal/deposit - just gives a positive or negative amount and app works out required procedure
 - Transactions of 0.00 do not appear on statement
 - Bank statement sorts transactions into order of occurrence if user input in non chronological order
- Learn how to format rspec expectations so that they don't exist on one line and produce rubocop warnings.

### Reflection

I really enjoyed this challenge, from being given no clues how to start and barely any acceptance criteria. I learnt how to use rspec to test console output. I think I showcased well my knowledge of agile and the MVP when listing my assumptions at the start. I used my knowledge of git and TDD well, having 20+ tests and 40+ commits. I still have to work on my implementation of the Single Responsibility Principle and keeping my classes separate. 
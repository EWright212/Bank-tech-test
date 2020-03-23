Assumptions made:

1. opening balance is zero
2. On a blank stament where no records have been made, balance is shown to be 0.00. 
 - I did consider leaving this blank to be more in line with how credit and debit are not shown if zero, however consitently showing a balance is more in line with a real world bank statment and most useful.
 3. Dates are input into the stystem by user instead of reading for current date from user's machine. 
 - This is not specified to be needed so I will input dates manually for MVP. 
 - In order to keep dates clear for myself I have used 01/01/2020 as a testing date.
 4. Account has no credit/debit limit
 5. Debit balance shown as a negative number instead of Cr/Dr


 Edge cases:

 - No transactions 
 - Transactions of zero
 - Statement printed for a date before transaction
 - negative balance
 - Negative credit/Negative debit transaction throws error

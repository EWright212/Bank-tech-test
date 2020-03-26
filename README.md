Assumptions made:

1. opening balance is zero
2. On a blank stament where no records have been made, no transactions/balance is shown 
 - I did consider leaving this blank to be more in line with how credit and debit are not shown if zero, however consitently showing a balance is more in line with a real world bank statment and most useful.
 3. Dates are input into the stystem by user instead of reading for current date from user's machine. 
 - This is not specified to be needed so I will input dates manually for MVP. 
 - In order to keep dates clear for myself I have used 01/01/2020 as a testing date.
 4. Account has no credit/debit limit
 5. Debit balance shown as a negative number instead of Cr/Dr
 6. Assume a printed statement wishes to show all input transactions and is not for transactions up to any given day
 7. Each transaction/request for bank statement made in separate command line instruction
 8. Assume no need for multiple users, just one person interacting with system at once
 9. Assume no limit on amounts in balance/transactions as long as not interfering with computer memory
 10. Assume unlimited requests/transactions in a day (again as long as not running into memory issues)
 11. Assume statement just outputs all transactions made, in order of input to stystem, not in chronological order
 12. Withdrawals and deposits happen sepererately
 13. Withdrawals and deposits made for amounts rounded to nearest pence
 14. Withdrawals are not in negative form


 Edge cases:

 - No transactions 
 - Transactions of zeros
 - negative balance is allowable
 - Negative credit/Negative debit transaction throws error
 - Transactions for invalid dates (check what a normal computer considers an acceptable date)
 - Transactions not in format X.XX

 Notes to self (formatting):

 - Dates in UK format
 - No commas or number separators for cr/dr/balance
 - No mention of currency

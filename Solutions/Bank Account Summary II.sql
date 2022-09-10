SELECT name, SUM(amount) AS balance
FROM Users
LEFT JOIN Transactions USING(account)
GROUP BY account
HAVING balance > 10000
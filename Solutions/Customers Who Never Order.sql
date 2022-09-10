-- 1
SELECT name AS 'Customers'
FROM Customers
WHERE id NOT IN (SELECT customerId FROM Orders);

-- 2
SELECT Name AS 'Customers'
FROM Customers c
LEFT JOIN Orders o
ON c.Id = o.CustomerId
WHERE o.CustomerId IS NULL;
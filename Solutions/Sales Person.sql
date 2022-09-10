SELECT name
FROM SalesPerson 
WHERE sales_id NOT IN (SELECT O.sales_id 
                       FROM Orders O
                       LEFT Company C
                          ON O.com_id = C.com_id
                       WHERE C.name = 'RED')

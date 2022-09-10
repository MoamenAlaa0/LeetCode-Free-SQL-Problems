SELECT user_id AS buyer_id , join_date, COALESCE(COUNT(order_id), 0) AS orders_in_2019 
FROM Users
LEFT JOIN Orders
ON Orders.buyer_id = Users.user_id
AND EXTRACT(year FROM Orders.order_date) = 2019
GROUP BY 1

-- With the filter in the join, you're filtering the second table before the join. With the filter in the where, you're filtering after the join.
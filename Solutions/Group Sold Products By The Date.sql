-- wwe can use STRING_AGG(column_name, ', ') also in postgreSQL

SELECT sell_date, 
       COUNT(DISTINCT(product)) AS num_sold, 
       GROUP_CONCAT(DISTINCT product) AS products
FROM Activities
GROUP BY 1
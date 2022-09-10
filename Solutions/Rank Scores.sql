SELECT score, DENSE_RANK() OVER(order by score DESC) AS 'rank'
FROM scores
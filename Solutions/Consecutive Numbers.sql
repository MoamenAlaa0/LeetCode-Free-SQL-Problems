SELECT DISTINCT ConsecutiveNums 
FROM(SELECT CASE WHEN (num = LAG(num, 1) OVER()) AND (num = LEAD(num, 1) OVER()) THEN num
        ELSE null END AS ConsecutiveNums
     FROM Logs) AS table_1
WHERE ConsecutiveNums IS NOT NULL
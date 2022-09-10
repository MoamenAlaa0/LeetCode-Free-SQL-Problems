WITH second AS(
    SELECT id, salary, 
        DENSE_RANK() OVER(ORDER BY salary DESC) AS Highest 
    FROM Employee
)
SELECT CASE WHEN COUNT(salary) < 1 THEN NULL
        ELSE salary END AS SecondHighestSalary
FROM second
WHERE Highest = 2
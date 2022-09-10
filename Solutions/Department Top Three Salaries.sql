SELECT D.name AS Department, E.name AS Employee, Salary 
FROM (SELECT name, Salary, departmentId, 
       DENSE_RANK() OVER(PARTITION BY departmentId ORDER BY salary DESC) AS R
      FROM Employee) AS E
INNER JOIN Department AS D
    ON E.departmentId = D.id
WHERE R IN (1, 2, 3)
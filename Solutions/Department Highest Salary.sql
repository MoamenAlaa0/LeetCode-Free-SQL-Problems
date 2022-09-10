SELECT D.name AS Department, E.name AS Employee, Salary
FROM Employee AS E
INNER JOIN Department AS D
    ON E.departmentId  = D.id
WHERE (E.departmentId, Salary) IN (SELECT departmentId, MAX(salary) 
                                   FROM Employee 
                                   GROUP BY departmentId)
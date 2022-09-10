-- 1
SELECT name AS Employee 
FROM Employee AS outt
WHERE salary > (SELECT salary 
                FROM Employee AS inn
                WHERE outt.managerId = inn.id);

-- 2
SELECT e1.name AS Employee 
FROM Employee e1, Employee e2
WHERE e1.managerId  = e2.id AND e1.salary > e2.salary;
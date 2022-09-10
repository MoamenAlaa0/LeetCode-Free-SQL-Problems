-- Please write a DELETE statement and DO NOT write a SELECT statement.

-- 1
DELETE FROM Person
WHERE id NOT IN (SELECT MIN(P.id) FROM (SELECT * FROM Person) AS P GROUP BY email);

-- 2
DELETE p1
FROM Person p1, Person p2
WHERE p1.Email = p2.Email AND p1.Id > p2.Id;

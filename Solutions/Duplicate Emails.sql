-- 1
SELECT Email
FROM Person
GROUP BY Email
HAVING COUNT(Email) > 1;

-- 2
SELECT DISTINCT P1.Email
FROM Person P1, Person P2
WHERE P1.email = P2.email AND P1.id <> P2.id;
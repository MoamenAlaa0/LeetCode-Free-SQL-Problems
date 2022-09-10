SELECT *
FROM Cinema
WHERE (id%2 = 1) AND (description != 'boring')
ORDER BY rating DESC;

-- using MOD(id, 2) or id%2
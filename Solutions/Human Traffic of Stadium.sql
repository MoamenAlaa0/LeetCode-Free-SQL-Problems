-- USING SEMI-JOIN

SELECT *
FROM Stadium 
WHERE people >= 100 AND
     (id+1 IN (SELECT id FROM Stadium WHERE people >= 100) AND id+2 IN (SELECT id FROM Stadium WHERE people >= 100) OR
      id-1 IN (SELECT id FROM Stadium WHERE people >= 100) AND id+1 IN (SELECT id FROM Stadium WHERE people >= 100) OR
      id-1 IN (SELECT id FROM Stadium WHERE people >= 100) AND id-2 IN (SELECT id FROM Stadium WHERE people >= 100))
ORDER BY visit_date

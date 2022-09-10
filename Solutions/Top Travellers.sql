SELECT U.name, 
       CASE WHEN R.distance IS NOT NULL THEN SUM(R.distance) ELSE 0 END AS travelled_distance
FROM Users U
LEFT JOIN Rides R ON R.user_id = U.id
GROUP BY R.user_id
ORDER BY travelled_distance DESC, name 
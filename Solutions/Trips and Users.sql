-- 1
WITH unbanned_canceled AS(
    SELECT request_at, status
    FROM Trips
    INNER JOIN Users U1 ON Trips.client_id = U1.users_id
    INNER JOIN Users U2 ON Trips.driver_id = U2.users_id
    WHERE U1.banned = 'No')

SELECT request_at AS Day, 
    ROUND(SUM(CASE WHEN status != 'completed' THEN 1 ELSE 0 END)/COUNT(status), 2) AS 'Cancellation Rate'
FROM unbanned_canceled
WHERE request_at BETWEEN '2013-10-01' AND '2013-10-03'
GROUP BY request_at;

-- 2
WITH unbanned_user AS(
    SELECT users_id
    FROM Users
    WHERE banned = "No")

SELECT 
    request_at Day,
    ROUND(COUNT(status LIKE "cancelled%" OR NULL)/COUNT(*), 2) "Cancellation Rate"
FROM Trips
WHERE 
    (request_at BETWEEN "2013-10-01" AND "2013-10-03") 
    AND client_id IN (SELECT users_id FROM unbanned_user)
    AND driver_id IN (SELECT users_id FROM unbanned_user)
GROUP BY 1;

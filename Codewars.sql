--5 KYU Calculating Running Total
SELECT DATE(created_at) AS date, 
       COUNT(*) as count, 
       CAST(SUM(COUNT(*)) OVER (ORDER BY DATE(created_at)) AS int) AS total
FROM posts
GROUP BY DATE(created_at)


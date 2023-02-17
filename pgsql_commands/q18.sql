/*
  Giving the URLs that have the most evaluations and the number of evaluations they have.
  The output contains the urls and then numevaluations.
  The URLs are returned in alphabetical order.
*/

SELECT DISTINCT e.url, COUNT(*) AS numevaluations
FROM Evaluation e
GROUP BY e.url HAVING COUNT(*) >= ALL (
	SELECT COUNT(*)
	FROM Evaluation e
	GROUP BY e.url
)
ORDER BY e.url ASC;


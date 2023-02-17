/*
  Obtaining the URLs of web-pages that were only evaluated by reviewer ’x@a.ca’.
  Note: this reviewer could have reviewed the page several times at different dates.
  Using a set operator in the SQL.
  The URLs are returned in alphabetical order.
*/

SELECT DISTINCT e.url
FROM Evaluation e
WHERE e.email = 'x@a.ca'
EXCEPT
SELECT DISTINCT e.url
FROM Evaluation e
WHERE e.email <> 'x@a.ca'
ORDER BY url ASC;

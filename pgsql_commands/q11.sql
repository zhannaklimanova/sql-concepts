/*
  Obtaining the URLs and titles of web-pages that are linked by at least two different topics.
  Using aggregation in the SQL.
  The URLs are returned in alphabetical order.
*/

SELECT DISTINCT w.url, w.title
FROM Webpages w
INNER JOIN Links l ON w.url = l.url
GROUP BY w.url, w.title HAVING COUNT(DISTINCT l.topicid) >= 2
ORDER BY w.url ASC;

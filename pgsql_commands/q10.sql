/*
  Obtaining the URLs and titles of web-pages that are linked by at least two different topics.
  Without using any aggregation in the SQL.
  The URLs are returned in alphabetical order.
*/

SELECT DISTINCT w.url, w.title
FROM Webpages w, Links l1, Links l2
WHERE w.url = l1.url AND w.url = l2.url AND l1.topicid <> l2.topicid
ORDER BY w.url ASC;

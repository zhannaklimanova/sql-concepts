/*
  Obtaining the URLs and titles of all web-pages linked by the topic ‘computer science’.
  The URLs are returned in alphabetical order.
*/

SELECT DISTINCT w.url, w.title
FROM Webpages w
INNER JOIN Links l ON w.url = l.url
INNER JOIN Topics t ON t.topicid = l.topicid
WHERE t.name = 'computer science'
ORDER BY w.url ASC;

/*
 Obtaining the URLs and titles of web-pages that were evaluated by both reviewer with email ’x@a.ca’
 and reviewer with email ’a@x.ca’.
 The URLs are returned in alphabetical order.
*/

SELECT DISTINCT w.url, w.title
FROM Webpages w, Evaluation e
WHERE w.url = e.url AND e.email = 'x@a.ca'
INTERSECT
SELECT DISTINCT w.url, w.title
FROM Webpages w, Evaluation e
WHERE w.url = e.url AND e.email = 'a@x.ca'
ORDER BY url ASC;

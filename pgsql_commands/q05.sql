/*
 Obtaining the URLs and titles of all web-pages that are linked by topics
 that have the same name as the title of the web-page.
 The URLs are returned in alphabetical order.
 */

SELECT DISTINCT w.url, w.title
FROM Webpages w
INNER JOIN Links l ON w.url = l.url
INNER JOIN Topics t ON l.topicid = t.topicid
WHERE w.title = t.name
ORDER BY w.url ASC;

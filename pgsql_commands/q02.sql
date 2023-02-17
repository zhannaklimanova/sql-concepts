/*
 Obtaining the URLs of all web-pages linked by the topic ‘computer science’ - using joins.
 The URLs are returned in alphabetical order.
*/

SELECT DISTINCT l.url
FROM Links l
INNER JOIN Topics t ON l.topicid = t.topicid
WHERE t.name = 'computer science'
ORDER BY l.url ASC;

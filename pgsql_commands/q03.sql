/*
  Obtaining the URL of all web-pages linked by the topic ‘computer science’ - using subquery.
  The URLs are returned in alphabetical order.
*/

SELECT DISTINCT l.url
FROM Links l
WHERE l.topicid = (
    SELECT t.topicid
    FROM Topics t
    WHERE t.name = 'computer science'
)
ORDER BY l.url ASC;

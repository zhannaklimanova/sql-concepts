/*
  Obtaining the topicid and name of all topics that are used by all URLs. 
  The topic ids are returned in ascending order.
*/

SELECT DISTINCT t.topicid, t.name
FROM Topics t
WHERE NOT EXISTS (
	SELECT w.url
	FROM Webpages w
        EXCEPT
        SELECT l.url
        FROM Links l
        WHERE t.topicid = l.topicid
)
ORDER BY t.topicid ASC;

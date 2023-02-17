/*
  Listing each topicid and the number of links it has. 
  For a topic that does not have any links, it should indicate 0. 
  Without using any outer joins, the output should have topicid and then numlinks. 
  The output is listed in ascending order of topicid.
*/

SELECT DISTINCT t.topicid, COUNT(l.url) AS numlinks
FROM Topics t, Links l
WHERE t.topicid = l.topicid
GROUP BY t.topicid
UNION
SELECT t.topicid, 0
FROM Topics t
WHERE t.topicid NOT IN (
	SELECT l.topicid 
	FROM Links l
)
ORDER BY topicid ASC;

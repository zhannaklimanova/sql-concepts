/*
  Indicating for each topicid, the number of links it has. The output should have 
  topicid and then numlinks. The output is listed in the ascending order of topicid
  and topics that do not have any links are ignored.
*/

SELECT DISTINCT l.topicid, COUNT(l.topicid) AS numlinks
FROM Links l
GROUP BY l.topicid
ORDER BY l.topicid ASC;

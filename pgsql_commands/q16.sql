/*
  Listing each topicid and the number of links it has.
  For a topic that does not have any links, it should indicate 0.
  Using an outer join, the output should have topicid and then numlinks.
  The output is listed in ascending order of topicid.
  Note: Using the derived table method and the trick to do arithmetic using NULLs.
*/

SELECT DISTINCT t.topicid, COALESCE(CountedLinks.numlinks, 0) AS numlinks
FROM Topics t
LEFT OUTER JOIN (
	SELECT l.topicid, COUNT(*) AS numlinks
	FROM Links l
	GROUP BY l.topicid
) AS CountedLinks ON t.topicid = CountedLinks.topicid
ORDER BY t.topicid ASC;










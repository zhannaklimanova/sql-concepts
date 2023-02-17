/*
  Obtaining the average number of links a topic has. Naming the output column avgnumlinks.
  Ignore topics without any links. 
  Note: using the derived table method discussed.
*/

SELECT DISTINCT AVG(count) AS avgnumlinks
FROM (
  SELECT l.topicid, COUNT(*) AS count
  FROM Links l 
  GROUP BY l.topicid
) count_links_subquery;


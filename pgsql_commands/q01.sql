/*
 Obtaining the URL of all web-pages with at least one evaluation with grade ‘good’ or ‘ok’.
 The URLs are returned in alphabetical order.
*/

SELECT DISTINCT e.url
FROM Evaluation e
WHERE grade = 'good' OR grade = 'ok'
ORDER BY e.url ASC;

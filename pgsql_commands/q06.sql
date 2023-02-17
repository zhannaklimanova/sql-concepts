/*
 Obtaining the URLs and titles of web-pages that were not evaluated in 2006 or earlier.
 The URLs are returned in alphabetical order.
*/

SELECT DISTINCT w.url, w.title
FROM Webpages w
WHERE w.url NOT IN (
    SELECT e.url
    FROM Evaluation e
    WHERE e.evaldate < '2007-01-01'
)
ORDER BY w.url ASC;


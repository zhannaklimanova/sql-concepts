/*
  Obtaining the number of tuples in the Links table. 
  Obtaining the name numlinks to the output column.
*/

SELECT DISTINCT COUNT(*) as numlinks -- technically, count has distinct grouping by default so DISTINCT is redundant
FROM Links;

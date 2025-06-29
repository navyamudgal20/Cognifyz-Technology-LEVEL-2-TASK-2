#LEVEL 2
#TASK 2 CUISINE COMBINATION
#IDENTIFY THE MOST COMMON COMBINATION OF CUISINES IN DATASET

USE TASKS;
SELECT 
  Cuisines,
  COUNT(*) AS combo_count
FROM 
  cognifyz
GROUP BY 
  Cuisines
ORDER BY 
  combo_count DESC
LIMIT 5;

#DETERMINE IF CERTAIN CUISINE COMBINATION TEND TO HAVE HIGHER RATINGS

SELECT 
  Cuisines,
  COUNT(*) AS restaurant_count,
  ROUND(AVG(`AGGREGATE RATING`), 2) AS avg_rating
FROM 
  cognifyz
GROUP BY 
  Cuisines
HAVING 
  restaurant_count >= 5  -- Optional: filters out rare combinations
ORDER BY 
  avg_rating DESC;



SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT REGEXP '^[AEIOU].*[AEIOU]$';

-- Concept: Cities that do not satisfy both conditions of starting and ending with vowels.
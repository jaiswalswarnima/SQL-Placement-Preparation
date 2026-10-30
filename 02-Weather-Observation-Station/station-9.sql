SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT REGEXP '^[AEIOU]';

-- Concept: Cities that do not start with vowels.
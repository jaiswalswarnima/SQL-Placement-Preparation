# SQL Revision Notes

## 1. SELECT

Retrieves specified columns from a table.

```sql
SELECT NAME
FROM CITY;
```

Use `SELECT *` to retrieve all columns.

## 2. WHERE

Filters rows according to a condition.

```sql
SELECT *
FROM CITY
WHERE POPULATION > 100000;
```

## 3. AND and OR

- `AND`: All conditions must be true.
- `OR`: At least one condition must be true.

```sql
WHERE COUNTRYCODE = 'USA'
AND POPULATION > 100000;
```

## 4. DISTINCT

Removes duplicate values from the result.

```sql
SELECT DISTINCT CITY
FROM STATION;
```

## 5. COUNT

Counts non-NULL values.

```sql
SELECT COUNT(CITY)
FROM STATION;
```

Counts unique, non-NULL city names:

```sql
SELECT COUNT(DISTINCT CITY)
FROM STATION;
```

## 6. Modulo Operator

The `%` operator returns the remainder after division.

```sql
SELECT *
FROM STATION
WHERE ID % 2 = 0;
```

This selects rows with even IDs.

## 7. LIKE

The `%` wildcard matches zero or more characters.

```sql
WHERE CITY LIKE 'A%';
```

Matches names starting with A.

```sql
WHERE CITY LIKE '%A';
```

Matches names ending with A.

## 8. REGEXP

Regular expressions are used for pattern matching.

| Pattern | Meaning |
|---|---|
| `^[AEIOU]` | Starts with a vowel |
| `[AEIOU]$` | Ends with a vowel |
| `.*` | Zero or more characters |
| `NOT REGEXP` | Does not match the pattern |

Example:

```sql
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[AEIOU]';
```

## 9. LENGTH

Returns the byte length of a string.

```sql
SELECT CITY, LENGTH(CITY)
FROM STATION;
```

## 10. ORDER BY

Sorts the query results.

```sql
ORDER BY CITY ASC;
```

Ascending order.

```sql
ORDER BY CITY DESC;
```

Descending order.

## 11. LIMIT

Restricts the number of rows returned.

```sql
SELECT CITY
FROM STATION
LIMIT 1;
```

## Key Takeaways

- `SELECT` specifies columns.
- `WHERE` filters rows.
- `DISTINCT` removes duplicates.
- `COUNT()` counts non-NULL values.
- `AND` requires all conditions to be true.
- `OR` requires at least one condition to be true.
- `LIKE` and `REGEXP` support pattern matching.
- `ORDER BY` sorts results.
- `LIMIT` restricts the number of returned rows.
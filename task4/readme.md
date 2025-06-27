What is GROUP BY?
➤ GROUP BY groups rows that have the same values into summary rows, like total sales per region.

Difference between WHERE and HAVING?
➤ WHERE filters rows before grouping.
➤ HAVING filters groups after aggregation.

1. How does COUNT(*) differ from COUNT(column)?
➤ COUNT(*) counts all rows.
➤ COUNT(column) counts only non-NULL values in that column.

2. Can you group by multiple columns?
➤ Yes. Example: GROUP BY Department, Gender.

3. What is ROUND() used for?
➤ ROUND() rounds numeric results to a specified number of decimal places.

4. How do you find the highest salary by department?
➤ Use MAX(Salary) with GROUP BY Department.

5. What is the default behavior of GROUP BY?
➤ It groups rows based on unique values of the specified column(s), returning one row per group.

6. Explain AVG and SUM.
➤ AVG() calculates average of a numeric column.
➤ SUM() adds up all the values in a numeric column.

7. How to count distinct values?
➤ COUNT(DISTINCT column_name) counts the number of unique values.

8. What is an aggregate function?
➤ Functions that operate on a set of rows to return a single result.
Examples: SUM(), AVG(), MAX(), MIN(), COUNT().

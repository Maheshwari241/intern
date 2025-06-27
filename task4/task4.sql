use mahi;

SELECT Department, SUM(Salary) AS Total_Salary FROM Emp GROUP BY Department;
SELECT Department, AVG(Salary) AS Avg_Salary FROM Emp GROUP BY Department;

SELECT Department, COUNT(*) AS Employee_Count FROM Emp GROUP BY Department;

SELECT Department, COUNT(*) AS Employee_Count FROM Employees GROUP BY Department HAVING COUNT(*) > 5;

SELECT Department, ROUND(AVG(Salary), 2) AS Rounded_Avg_Salary FROM Emp GROUP BY Department;

SELECT COUNT(DISTINCT Department) AS Distinct_Depts FROM Emp;

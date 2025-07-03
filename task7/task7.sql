use mahi;

CREATE VIEW HighSalaryEmployees AS SELECT Name, Department, Salary FROM Employees WHERE Salary > 50000;

CREATE VIEW PublicEmployeeInfo AS SELECT Name, Department FROM Employees;

SELECT * FROM HighSalaryEmployees;

UPDATE HighSalaryEmployeesEmployees SET Salary = 60000 WHERE Name = 'John';

use mahi;
CREATE TABLE Employee (
    ID INTEGER PRIMARY KEY,
    Name TEXT NOT NULL,
    DepartmentID INTEGER,
    Salary REAL,
    Age INTEGER
);
INSERT INTO Employee (ID, Name, DepartmentID, Salary, Age) VALUES
(1, 'Alice', 101, 70000, 30),
(2, 'Bob', 102, 50000, 25),
(3, 'Charlie', 101, 80000, 35),
(4, 'David', 103, 45000, 28),
(5, 'Eve', 102, 55000, 26);

CREATE TABLE Departments (
    ID INTEGER PRIMARY KEY,
    DepartmentName TEXT,
    Location TEXT
);

INSERT INTO Departments (ID, DepartmentName, Location) VALUES
(101, 'HR', 'Chennai'),
(102, 'IT', 'Bangalore'),
(103, 'Finance', 'Mumbai');

CREATE TABLE Projects (
    ProjectID INTEGER PRIMARY KEY,
    ProjectName TEXT,
    EmployeeID INTEGER
);

INSERT INTO Projects (ProjectID, ProjectName, EmployeeID) VALUES
(1, 'Alpha', 1),
(2, 'Beta', 3),
(3, 'Gamma', 2),
(4, 'Delta', 5);

SELECT Name, Salary FROM Employee WHERE Salary > (SELECT AVG(Salary) FROM Employee);

SELECT Name FROM Employees WHERE Department IN (SELECT Department FROM Departments WHERE Location = 'Chennai');

SELECT Name, (SELECT Department FROM Departments WHERE Departments.ID = Employee.DepartmentID) AS Dept_Name FROM Employee;

SELECT Dept, AVG(Salary) AS AvgSal FROM (
    SELECT Department AS Dept, Salary
    FROM Employee
) AS Sub GROUP BY Dept;

SELECT e1.Name FROM Employees e1
WHERE Salary > (
  SELECT AVG(Salary)
  FROM Employee e2
  WHERE e1.Department = e2.Department
);

SELECT Name
FROM Employee e
WHERE EXISTS (
    SELECT 1 FROM Projects p WHERE p.EmployeeID = e.ID
);

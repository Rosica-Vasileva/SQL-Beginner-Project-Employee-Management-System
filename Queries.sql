#1

SELECT FullName
FROM Employees
WHERE DepartmentID='2';

#2

SELECT e.FullName, s.Amount, s.PaymentDate
FROM Salaries s
INNER JOIN Employees e ON s.EmployeesID = e.EmployeesID
WHERE e.FullName = 'John Doe';

#3

SELECT SUM(s.Amount) AS TotalSalary
FROM Salaries s
INNER JOIN Employees e ON s.EmployeesID = e.EmployeesID
WHERE e.DepartmentID = 1;

#4

INSERT INTO Employees (FullName, DepartmentID, HireDate)
VALUES ('Jane Smith', 2, '2024-02-28');

#5

UPDATE Salaries
SET Amount = 5200.00
WHERE EmployeesID = 1;

#6 

SELECT (DATEDIFF('2023-12-31', CURDATE()) + 1) - COUNT(*)
FROM Vacations
WHERE EmployeesID = 1 AND StartDate >= CURDATE() AND StartDate <= '2023-12-31';

#7 

SELECT e.DepartmentID, d.Name AS DepartmentName, COUNT(*) AS TotalVacationDays
FROM Employees e
JOIN Vacations v ON e.EmployeesID = v.EmployeesID
JOIN Departments d ON e.DepartmentID = d.DepartmentID
GROUP BY e.DepartmentID, d.Name;

#8

SELECT e.DepartmentID AS DepartmentID,
       d.Name AS DepartmentName,
       COUNT(*) AS TotalVacationDays
FROM Employees e
JOIN Vacations v ON e.EmployeesID = v.EmployeesID
JOIN Departments d ON e.DepartmentID = d.DepartmentID
GROUP BY e.DepartmentID, d.Name;


#9


SELECT CONCAT(e.FullName, ' ', 'Department') AS FullName_Department
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID
LIMIT 0, 1000;

#10

SELECT FullName, COUNT(*)
FROM Employees
GROUP BY FullName
HAVING COUNT(*) = 1;


CREATE TABLE Employees (
EmployeesID INT AUTO_INCREMENT PRIMARY KEY,
FullName VARCHAR (255) NOT NULL,
DepartmentID INT NOT NULL ,
HireDate DATE NOT NULL
);

INSERT INTO Employees (FullName, DepartmentID, HireDate)
VALUES 
    ('John Doe', 1, '2023-01-15'),
    ('Alice Smith', 2, '2022-07-20'),
    ('Michael Johnson', 3, '2023-03-10'),
    ('Emily Brown', 1, '2022-11-05'),
    ('David Wilson', 2, '2023-02-28'),
    ('Sarah Martinez', 3, '2022-09-12'),
    ('Christopher Taylor', 1, '2023-04-18'),
    ('Jessica Garcia', 2, '2022-12-03'),
    ('Matthew Rodriguez', 3, '2023-01-25'),
    ('Jennifer Lee', 1, '2022-10-08'),
    ('Andrew Gonzalez', 2, '2023-03-15'),
    ('Elizabeth Hernandez', 3, '2022-08-22'),
    ('Daniel King', 1, '2023-05-20'),
    ('Ava White', 2, '2022-11-30'),
    ('Ryan Perez', 3, '2023-02-10'),
    ('Olivia Adams', 1, '2022-09-05'),
    ('William Turner', 2, '2023-04-12'),
    ('Sophia Campbell', 3, '2022-12-18'),
    ('James Carter', 1, '2023-01-10'),
    ('Emma Cooper', 2, '2022-10-25');


CREATE TABLE Departments (
DepartmentID INT AUTO_INCREMENT PRIMARY KEY,
Name VARCHAR (255) NOT NULL
);


INSERT INTO Departments (Name)
VALUES 
    ('Human Resources'),
    ('Finance'),
    ('Marketing'),
    ('Information Technology');



CREATE TABLE Salaries (
    SalaryID INT AUTO_INCREMENT PRIMARY KEY,
    EmployeesID INT NOT NULL,
    Amount DECIMAL(10, 2) NOT NULL,
    PaymentDate DATE NOT NULL,
    FOREIGN KEY (EmployeesID) REFERENCES Employees(EmployeesID)
);

INSERT INTO Salaries (EmployeesID, Amount, PaymentDate)
VALUES 
    (1, 4500.00, '2023-02-28'),
    (2, 4800.00, '2023-02-28'),
    (3, 5000.00, '2023-02-28'),
    (4, 4200.00, '2023-02-28'),
    (5, 4600.00, '2023-02-28'),
    (6, 4900.00, '2023-02-28'),
    (7, 4700.00, '2023-02-28'),
    (8, 4400.00, '2023-02-28'),
    (9, 5100.00, '2023-02-28'),
    (10, 4300.00, '2023-02-28'),
    (11, 4700.00, '2023-02-28'),
    (12, 5200.00, '2023-02-28'),
    (13, 4400.00, '2023-02-28'),
    (14, 4700.00, '2023-02-28'),
    (15, 4900.00, '2023-02-28'),
    (16, 4500.00, '2023-02-28'),
    (17, 4700.00, '2023-02-28'),
    (18, 4800.00, '2023-02-28'),
    (19, 5000.00, '2023-02-28'),
    (20, 4300.00, '2023-02-28');

CREATE TABLE Vacations (
    VacationID INT AUTO_INCREMENT PRIMARY KEY,
    EmployeesID INT NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    FOREIGN KEY (EmployeesID) REFERENCES Employees(EmployeesID)
);

INSERT INTO Vacations (EmployeesID, StartDate, EndDate)
VALUES
    (1, '2023-07-01', '2023-07-10'),
    (2, '2023-08-15', '2023-08-25'),
    (3, '2023-09-20', '2023-09-30'),
    (4, '2023-10-10', '2023-10-20'),
    (5, '2023-11-05', '2023-11-15'),
    (6, '2023-12-01', '2023-12-10'),
    (7, '2023-12-20', '2023-12-31');


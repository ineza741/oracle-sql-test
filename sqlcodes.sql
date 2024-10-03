-- Create table for Departments
CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50) NOT NULL
);

-- Create table for Employees
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(100),
    DeptID INT,
    FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
);

-- Create table for Projects
CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(100),
    DeptID INT,
    FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
);

-- Create table for Salaries
CREATE TABLE Salaries (
    EmpID INT PRIMARY KEY,
    Salary DECIMAL(10, 2),
    FOREIGN KEY (EmpID) REFERENCES Employees(EmpID)
);
-- Insert into Departments
INSERT INTO Departments (DeptID, DeptName) VALUES (1, 'HR');
INSERT INTO Departments (DeptID, DeptName) VALUES (2, 'IT');
INSERT INTO Departments (DeptID, DeptName) VALUES (3, 'Finance');

-- Insert into Employees
INSERT INTO Employees (EmpID, EmpName, DeptID) VALUES (1, 'John Doe', 1);
INSERT INTO Employees (EmpID, EmpName, DeptID) VALUES (2, 'Jane Smith', 2);

-- Insert into Projects
INSERT INTO Projects (ProjectID, ProjectName, DeptID) VALUES (101, 'Project Alpha', 1);
INSERT INTO Projects (ProjectID, ProjectName, DeptID) VALUES (102, 'Project Beta', 2);

-- Insert into Salaries
INSERT INTO Salaries (EmpID, Salary) VALUES (1, 50000);
INSERT INTO Salaries (EmpID, Salary) VALUES (2, 70000);
-- Update Salary
UPDATE Salaries
SET Salary = 60000
WHERE EmpID = 1;
-- Delete an employee
DELETE FROM Employees WHERE EmpID = 2;
-- Join Employees and Departments
SELECT Employees.EmpName, Departments.DeptName
FROM Employees
JOIN Departments ON Employees.DeptID = Departments.DeptID;

-- Join Employees and Salaries
SELECT Employees.EmpName, Salaries.Salary
FROM Employees
JOIN Salaries ON Employees.EmpID = Salaries.EmpID;

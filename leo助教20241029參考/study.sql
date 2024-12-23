CREATE DATABASE test;


CREATE TABLE test.departments (
    department_id INT,
    name VARCHAR(50),
    location VARCHAR(50),
	CONSTRAINT departments_PK PRIMARY KEY (department_id) 
);

INSERT INTO test.departments (department_id, name, location) VALUES
(1, 'Sales', 'New York'),
(2, 'Marketing', 'Los Angeles'),
(3, 'Finance', 'Chicago'),
(4, 'IT', 'San Francisco'),
(5, 'HR', 'Houston'),
(6, 'Legal', 'Miami'),
(7, 'Operations', 'Boston'),
(8, 'R&D', 'Seattle'),
(9, 'Support', 'Phoenix'),
(10, 'Administration', 'Dallas');


CREATE TABLE test.employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    department_id INT,
    salary DECIMAL(10, 2),
	FOREIGN KEY (department_id) REFERENCES test.departments(department_id)
);

INSERT INTO test.employees (employee_id, name, department_id, salary) VALUES
(1, 'Himmel', 1, 5000.00),
(2, 'Jane Smith', 2, 5500.00),
(3, 'Chiikawa', 3, 6000.00),
(4, 'Bob Lee', 4, 5200.00),
(5, 'Leo Tsai', 5, 5700.00),
(6, 'Eisen', 6, 6200.00),
(7, 'Eva Green', 7, 5300.00),
(8, 'Frieren', 8, 5800.00),
(9, 'Heiter', 9, 6300.00),
(10, 'Henry Scott', 10, 5400.00);


CREATE TABLE test.projects (
    project_id INT PRIMARY KEY,
    name VARCHAR(50),
    budget DECIMAL(10, 2),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES test.departments(department_id)
);

INSERT INTO test.projects (project_id, name, budget, department_id) VALUES
(1, 'Project Alpha', 10000.00, 1),
(2, 'Project Beta', 15000.00, 2),
(3, 'Project Gamma', 20000.00, 3),
(4, 'Project Delta', 25000.00, 4),
(5, 'Project Epsilon', 30000.00, 5),
(6, 'Project Zeta', 35000.00, 6),
(7, 'Project Eta', 40000.00, 7),
(8, 'Project Theta', 45000.00, 8),
(9, 'Project Iota', 50000.00, 9),
(10, 'Project Kappa', 55000.00, 10);


CREATE TABLE test.full_table (
    employee_id INT,
    employee_name VARCHAR(50),
    salary DECIMAL(10, 2),
    department_id INT,
    department_name VARCHAR(50),
    location VARCHAR(50),
    project_id INT,
    project_name VARCHAR(50),
    budget DECIMAL(10, 2)
);

INSERT INTO test.full_table (employee_id, employee_name, salary, department_id, department_name, location, project_id, project_name, budget) VALUES
(1, 'Himmel', 5000.00, 1, 'Sales', 'New York', 1, 'Project Alpha', 10000.00),
(2, 'Jane Smith', 5500.00, 2, 'Marketing', 'Los Angeles', 2, 'Project Beta', 15000.00),
(3, 'Chiikawa', 6000.00, 3, 'Finance', 'Chicago', 3, 'Project Gamma', 20000.00),
(4, 'Bob Lee', 5200.00, 4, 'IT', 'San Francisco', 4, 'Project Delta', 25000.00),
(5, 'Leo Tsai', 5700.00, 5, 'HR', 'Houston', 5, 'Project Epsilon', 30000.00),
(6, 'Eisen', 6200.00, 6, 'Legal', 'Miami', 6, 'Project Zeta', 35000.00),
(7, 'Eva Green', 5300.00, 7, 'Operations', 'Boston', 7, 'Project Eta', 40000.00),
(8, 'Frieren', 5800.00, 8, 'R&D', 'Seattle', 8, 'Project Theta', 45000.00),
(9, 'Heiter', 6300.00, 9, 'Support', 'Phoenix', 9, 'Project Iota', 50000.00),
(10, 'Henry Scott', 5400.00, 10, 'Administration', 'Dallas', 10, 'Project Kappa', 55000.00);

use test;
-- 1 篩選結果找到在HR部門的員工
SELECT * FROM employees 
WHERE department_id = (SELECT department_id FROM departments WHERE name = 'HR');
-- 1-1使用JOIN找到在HR部門的員工
SELECT * FROM employees AS E
INNER JOIN departments AS D ON E.department_id = D.department_id
WHERE D.NAME = 'HR';

SELECT * FROM employees AS E
LEFT JOIN departments AS D ON E.department_id = D.department_id
WHERE D.NAME = 'HR';

-- 2 使用 IN 子句找到部門在紐約的員工
SELECT * FROM employees 
WHERE department_id IN (SELECT department_id FROM departments WHERE location = 'New York');
-- 2-1使用join找到部門在紐約的員工
SELECT * FROM employees E
INNER JOIN departments D ON E.department_id = D.department_id
WHERE D.LOCATION = 'New York';

SELECT * FROM employees E
JOIN departments D ON E.department_id = D.department_id
WHERE D.LOCATION = 'New York';

SELECT * FROM employees E
LEFT JOIN departments D ON E.department_id = D.department_id
WHERE D.LOCATION = 'New York';

-- 3 使用 EXISTS 查詢 "Finance" 部門中的員工姓名
SELECT name FROM employees e 
WHERE EXISTS (SELECT 1 FROM departments d WHERE d.department_id = e.department_id AND d.name = 'Finance');
-- 3-1 使用 JOIN 找到 "Finance" 部門中的員工姓名
SELECT * FROM employees E
INNER JOIN departments D ON E.department_id = D.department_id
WHERE D.NAME = 'Finance';

SELECT * FROM employees E
LEFT JOIN departments D ON E.department_id = D.department_id
WHERE D.NAME = 'Finance';

-- 4 使用子查詢計算 薪資 高於平均值的員工
SELECT department_id, name, salary FROM employees 
WHERE salary > (SELECT AVG(salary) FROM employees);

-- 4-1 使用 JOIN 查詢 薪資 高於平均值的員工
SELECT E.employee_id, E.name, E.department_id, E.salary
FROM employees E
Cross Join (SELECT AVG(salary) AS AVG_salary FROM employees) AS avg_table
WHERE E.salary > avg_table.AVG_salary;


-- 5 找出所有在 "Sales" 部門工作的員工的姓名，以及他們參與的項目的名稱。
SELECT E.name AS employee_name, 
       (SELECT P.name 
        FROM projects P 
        WHERE P.department_id = D.department_id) AS project_name
FROM employees E
JOIN departments D ON E.department_id = D.department_id
WHERE D.name = 'Sales';







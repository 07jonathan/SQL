-- Create a table with various constraints
CREATE TABLE employees (
    employee_id INT PRIMARY KEY, -- Primary key constraint
    first_name VARCHAR(50) NOT NULL, -- Not null constraint
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE, -- Unique constraint
    department_id INT,
    salary DECIMAL(10, 2) CHECK (salary >= 0), -- Check constraint
    hire_date DATE DEFAULT CURRENT_DATE -- Default constraint
);

-- Example of creating an index
CREATE INDEX idx_department_id ON employees(department_id);

-- Example of adding a foreign key constraint
ALTER TABLE employees
ADD CONSTRAINT fk_department
FOREIGN KEY (department_id) REFERENCES departments(department_id);
